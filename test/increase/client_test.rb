# frozen_string_literal: true

require_relative "test_helper"

class IncreaseTest < Test::Unit::TestCase
  class MockResponse
    def code
      500
    end

    def header
      {}
    end

    def body
      ""
    end
  end

  class MockRequester
    attr_accessor(:attempts)

    def initialize
      self.attempts = 0
    end

    def execute(_req)
      self.attempts += 1
      MockResponse.new
    end
  end

  def test_client_default_request_default_retry_attempts
    increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
    requester = MockRequester.new
    increase.requester = requester
    assert_raise(Increase::HTTP::InternalServerError) do
      increase.accounts.create({name: "New Account!"})
    end
    assert_equal(3, requester.attempts)
  end

  def test_client_given_request_default_retry_attempts
    increase = Increase::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      max_retries: 3
    )
    requester = MockRequester.new
    increase.requester = requester
    assert_raise(Increase::HTTP::InternalServerError) do
      increase.accounts.create({name: "New Account!"})
    end
    assert_equal(4, requester.attempts)
  end

  def test_client_default_request_given_retry_attempts
    increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
    requester = MockRequester.new
    increase.requester = requester
    assert_raise(Increase::HTTP::InternalServerError) do
      increase.accounts.create({name: "New Account!"}, max_retries: 3)
    end
    assert_equal(4, requester.attempts)
  end

  def test_client_given_request_given_retry_attempts
    increase = Increase::Client.new(
      base_url: "http://localhost:4010",
      api_key: "My API Key",
      max_retries: 3
    )
    requester = MockRequester.new
    increase.requester = requester
    assert_raise(Increase::HTTP::InternalServerError) do
      increase.accounts.create({name: "New Account!"}, max_retries: 4)
    end
    assert_equal(5, requester.attempts)
  end
end
