# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CheckTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_mail
    response = @increase.simulations.check_transfers.mail("check_transfer_id")
    assert_kind_of(Increase::Models::CheckTransfer, response)
  end
end
