# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardRefundsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.card_refunds.create(transaction_id: "transaction_uyrp7fld2ium70oa7oi")

    assert_pattern do
      response => Increase::Models::Transaction
    end
  end
end
