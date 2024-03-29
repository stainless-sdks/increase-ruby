# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExternalAccountsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.external_accounts.create(
      {
        account_number: "987654321",
        description: "Landlord",
        routing_number: "101050001"
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::ExternalAccount, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @increase.external_accounts.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::ExternalAccount, response),
      response.class.to_s
    )
  end

  def test_update
    response = @increase.external_accounts.update("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::ExternalAccount, response),
      response.class.to_s
    )
  end

  def test_list
    response = @increase.external_accounts.list
    assert(
      Increase::Converter.same_type?(Increase::Models::ExternalAccount, response),
      response.class.to_s
    )
  end
end
