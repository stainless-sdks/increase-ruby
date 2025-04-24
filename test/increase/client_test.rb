# frozen_string_literal: true

require_relative "test_helper"

class IncreaseTest < Minitest::Test
  include WebMock::API

  class << self
    def test_order = :random

    def run_one_method(...) = Minitest::Runnable.run_one_method(...)
  end

  def before_all
    super
    WebMock.enable!
  end

  def setup
    super
    Thread.current.thread_variable_set(:mock_sleep, [])
  end

  def teardown
    Thread.current.thread_variable_set(:mock_sleep, nil)
    WebMock.reset!
    super
  end

  def after_all
    WebMock.disable!
    super
  end

  def test_raises_on_unknown_environment
    e = assert_raises(ArgumentError) do
      Increase::Client.new(environment: "wrong")
    end
    assert_match(/environment must be one of/, e.message)
  end

  def test_raises_on_missing_non_nullable_opts
    e = assert_raises(ArgumentError) do
      Increase::Client.new
    end
    assert_match(/is required/, e.message)
  end

  def test_client_default_request_default_retry_attempts
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!")
    end

    assert_requested(:any, /./, times: 3)
  end

  def test_client_given_request_default_retry_attempts
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key", max_retries: 3)

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!")
    end

    assert_requested(:any, /./, times: 4)
  end

  def test_client_default_request_given_retry_attempts
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!", request_options: {max_retries: 3})
    end

    assert_requested(:any, /./, times: 4)
  end

  def test_client_given_request_given_retry_attempts
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key", max_retries: 3)

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!", request_options: {max_retries: 4})
    end

    assert_requested(:any, /./, times: 5)
  end

  def test_client_retry_after_seconds
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      headers: {"retry-after" => "1.3"},
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key", max_retries: 1)

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!")
    end

    assert_requested(:any, /./, times: 2)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_client_retry_after_date
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      headers: {"retry-after" => (Time.now + 10).httpdate},
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key", max_retries: 1)

    assert_raises(Increase::Errors::InternalServerError) do
      Thread.current.thread_variable_set(:time_now, Time.now)
      increase.accounts.create(name: "New Account!")
      Thread.current.thread_variable_set(:time_now, nil)
    end

    assert_requested(:any, /./, times: 2)
    assert_in_delta(10, Thread.current.thread_variable_get(:mock_sleep).last, 1.0)
  end

  def test_client_retry_after_ms
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      headers: {"retry-after-ms" => "1300"},
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key", max_retries: 1)

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!")
    end

    assert_requested(:any, /./, times: 2)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_retry_count_header
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!")
    end

    3.times do
      assert_requested(:any, /./, headers: {"x-stainless-retry-count" => _1})
    end
  end

  def test_omit_retry_count_header
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(
        name: "New Account!",
        request_options: {extra_headers: {"x-stainless-retry-count" => nil}}
      )
    end

    assert_requested(:any, /./, times: 3) do
      refute_includes(_1.headers.keys.map(&:downcase), "x-stainless-retry-count")
    end
  end

  def test_overwrite_retry_count_header
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(
        name: "New Account!",
        request_options: {extra_headers: {"x-stainless-retry-count" => "42"}}
      )
    end

    assert_requested(:any, /./, headers: {"x-stainless-retry-count" => "42"}, times: 3)
  end

  def test_client_redirect_307
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 307,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:any, "http://localhost/redirected").to_return(
      status: 307,
      headers: {"location" => "/redirected"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::APIConnectionError) do
      increase.accounts.create(name: "New Account!", request_options: {extra_headers: {}})
    end

    recorded, = WebMock::RequestRegistry.instance.requested_signatures.hash.first

    assert_requested(:any, "http://localhost/redirected", times: Increase::Client::MAX_REDIRECTS) do
      assert_equal(recorded.method, _1.method)
      assert_equal(recorded.body, _1.body)
      assert_equal(
        recorded.headers.transform_keys(&:downcase).fetch("content-type"),
        _1.headers.transform_keys(&:downcase).fetch("content-type")
      )
    end
  end

  def test_client_redirect_303
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 303,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:get, "http://localhost/redirected").to_return(
      status: 303,
      headers: {"location" => "/redirected"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::APIConnectionError) do
      increase.accounts.create(name: "New Account!", request_options: {extra_headers: {}})
    end

    assert_requested(:get, "http://localhost/redirected", times: Increase::Client::MAX_REDIRECTS) do
      headers = _1.headers.keys.map(&:downcase)
      refute_includes(headers, "content-type")
      assert_nil(_1.body)
    end
  end

  def test_client_redirect_auth_keep_same_origin
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 307,
      headers: {"location" => "/redirected"},
      body: {}
    )
    stub_request(:any, "http://localhost/redirected").to_return(
      status: 307,
      headers: {"location" => "/redirected"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::APIConnectionError) do
      increase.accounts.create(
        name: "New Account!",
        request_options: {extra_headers: {"authorization" => "Bearer xyz"}}
      )
    end

    recorded, = WebMock::RequestRegistry.instance.requested_signatures.hash.first
    auth_header = recorded.headers.transform_keys(&:downcase).fetch("authorization")

    assert_equal("Bearer xyz", auth_header)
    assert_requested(:any, "http://localhost/redirected", times: Increase::Client::MAX_REDIRECTS) do
      auth_header = _1.headers.transform_keys(&:downcase).fetch("authorization")
      assert_equal("Bearer xyz", auth_header)
    end
  end

  def test_client_redirect_auth_strip_cross_origin
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 307,
      headers: {"location" => "https://example.com/redirected"},
      body: {}
    )
    stub_request(:any, "https://example.com/redirected").to_return(
      status: 307,
      headers: {"location" => "https://example.com/redirected"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::APIConnectionError) do
      increase.accounts.create(
        name: "New Account!",
        request_options: {extra_headers: {"authorization" => "Bearer xyz"}}
      )
    end

    assert_requested(:any, "https://example.com/redirected", times: Increase::Client::MAX_REDIRECTS) do
      headers = _1.headers.keys.map(&:downcase)
      refute_includes(headers, "authorization")
    end
  end

  def test_client_default_idempotency_key_on_writes
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(name: "New Account!", request_options: {max_retries: 1})
    end

    headers = []
    assert_requested(:any, /./, times: 2) do
      header = _1.headers.transform_keys(&:downcase).fetch("idempotency-key")
      headers << header
      refute_empty(header)
    end

    assert_equal(*headers)
  end

  def test_request_option_idempotency_key_on_writes
    stub_request(:post, "http://localhost/accounts").to_return_json(
      status: 500,
      body: {"type" => "internal_server_error"}
    )

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    assert_raises(Increase::Errors::InternalServerError) do
      increase.accounts.create(
        name: "New Account!",
        request_options: {max_retries: 1, idempotency_key: "user-supplied-key"}
      )
    end

    assert_requested(
      :any,
      /./,
      headers: {"idempotency-key" => "user-supplied-key"},
      times: 2
    )
  end

  def test_default_headers
    stub_request(:post, "http://localhost/accounts").to_return_json(status: 200, body: {})

    increase = Increase::Client.new(base_url: "http://localhost", api_key: "My API Key")

    increase.accounts.create(name: "New Account!")

    assert_requested(:any, /./) do |req|
      headers = req.headers.transform_keys(&:downcase).fetch_values("accept", "content-type")
      headers.each { refute_empty(_1) }
    end
  end
end
