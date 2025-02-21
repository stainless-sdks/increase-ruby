# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::LockboxesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.lockboxes.create(account_id: "account_in71c4amph0vgo2qllky")

    assert_pattern do
      response => Increase::Models::Lockbox
    end
  end

  def test_retrieve
    response = @increase.lockboxes.retrieve("lockbox_id")

    assert_pattern do
      response => Increase::Models::Lockbox
    end
  end

  def test_update
    response = @increase.lockboxes.update("lockbox_id")

    assert_pattern do
      response => Increase::Models::Lockbox
    end
  end

  def test_list
    response = @increase.lockboxes.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Lockbox
    end
  end
end
