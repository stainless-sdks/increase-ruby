# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::AccountTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_complete
    response = @increase.simulations.account_transfers.complete("account_transfer_id")

    assert_pattern do
      response => Increase::Models::AccountTransfer
    end
  end
end
