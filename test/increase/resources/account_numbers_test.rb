# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountNumbersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.account_numbers.create(
      account_id: "account_in71c4amph0vgo2qllky",
      name: "Rent payments"
    )

    assert_pattern do
      response => Increase::Models::AccountNumber
    end
  end

  def test_retrieve
    response = @increase.account_numbers.retrieve("account_number_id")

    assert_pattern do
      response => Increase::Models::AccountNumber
    end
  end

  def test_update
    response = @increase.account_numbers.update("account_number_id")

    assert_pattern do
      response => Increase::Models::AccountNumber
    end
  end

  def test_list
    response = @increase.account_numbers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::AccountNumber
    end
  end
end
