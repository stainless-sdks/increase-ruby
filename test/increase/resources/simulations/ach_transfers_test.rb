# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::ACHTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_acknowledge
    response = @increase.simulations.ach_transfers.acknowledge("ach_transfer_id")
    assert_kind_of(Increase::Models::ACHTransfer, response)
  end

  def test_create_notification_of_change_required_params
    response = @increase.simulations.ach_transfers.create_notification_of_change(
      "ach_transfer_id",
      {change_code: "incorrect_account_number", corrected_data: "123456789"}
    )
    assert_kind_of(Increase::Models::ACHTransfer, response)
  end

  def test_return_
    response = @increase.simulations.ach_transfers.return_("ach_transfer_id")
    assert_kind_of(Increase::Models::ACHTransfer, response)
  end

  def test_submit
    response = @increase.simulations.ach_transfers.submit("ach_transfer_id")
    assert_kind_of(Increase::Models::ACHTransfer, response)
  end
end
