# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::CardSettlementsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.card_settlements.create(
      {card_id: "card_oubs0hwk5rn6knuecxg2", pending_transaction_id: "pending_transaction_k1sfetcau2qbvjbzgju4"}
    )
    assert_kind_of(Increase::Models::Transaction, response)
  end
end
