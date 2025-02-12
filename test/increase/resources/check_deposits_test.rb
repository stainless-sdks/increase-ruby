# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CheckDepositsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.check_deposits.create(
      account_id: "account_in71c4amph0vgo2qllky",
      amount: 1000,
      back_image_file_id: "file_26khfk98mzfz90a11oqx",
      front_image_file_id: "file_hkv175ovmc2tb2v2zbrm"
    )

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end
  end

  def test_retrieve
    response = @increase.check_deposits.retrieve("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end
  end

  def test_list
    response = @increase.check_deposits.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::CheckDeposit
    end
  end
end
