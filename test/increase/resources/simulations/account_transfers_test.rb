# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::AccountTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_complete
    response = @increase.simulations.account_transfers.complete("account_transfer_id")
    assert_kind_of(Increase::Models::AccountTransfer, response)
  end
end
