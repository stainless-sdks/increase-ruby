# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.accounts.create(name: "New Account!")

    assert_pattern do
      response => Increase::Models::Account
    end
  end

  def test_retrieve
    response = @increase.accounts.retrieve("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end
  end

  def test_update
    response = @increase.accounts.update("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end
  end

  def test_list
    response = @increase.accounts.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end

  def test_balance
    response = @increase.accounts.balance("account_id")

    assert_pattern do
      response => Increase::Models::BalanceLookup
    end
  end

  def test_close
    response = @increase.accounts.close("account_id")

    assert_pattern do
      response => Increase::Models::Account
    end
  end
end
