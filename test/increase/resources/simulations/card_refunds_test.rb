# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CardRefundsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.card_refunds.create({transaction_id: "transaction_uyrp7fld2ium70oa7oi"})
    assert_kind_of(Increase::Models::Transaction, response)
  end
end
