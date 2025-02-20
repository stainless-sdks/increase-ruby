# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundCheckDepositsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.inbound_check_deposits.retrieve("inbound_check_deposit_id")

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        accepted_at: Time | nil,
        account_id: String,
        account_number_id: String | nil,
        adjustments: ^(Increase::ArrayOf[Increase::Models::InboundCheckDeposit::Adjustment]),
        amount: Integer,
        back_image_file_id: String | nil,
        bank_of_first_deposit_routing_number: String | nil,
        check_number: String | nil,
        check_transfer_id: String | nil,
        created_at: Time,
        currency: Increase::Models::InboundCheckDeposit::Currency,
        declined_at: Time | nil,
        declined_transaction_id: String | nil,
        deposit_return: Increase::Models::InboundCheckDeposit::DepositReturn | nil,
        front_image_file_id: String | nil,
        payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis,
        status: Increase::Models::InboundCheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::InboundCheckDeposit::Type
      }
    end
  end

  def test_list
    response = @increase.inbound_check_deposits.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::InboundCheckDeposit
    end

    assert_pattern do
      row => {
        id: String,
        accepted_at: Time | nil,
        account_id: String,
        account_number_id: String | nil,
        adjustments: ^(Increase::ArrayOf[Increase::Models::InboundCheckDeposit::Adjustment]),
        amount: Integer,
        back_image_file_id: String | nil,
        bank_of_first_deposit_routing_number: String | nil,
        check_number: String | nil,
        check_transfer_id: String | nil,
        created_at: Time,
        currency: Increase::Models::InboundCheckDeposit::Currency,
        declined_at: Time | nil,
        declined_transaction_id: String | nil,
        deposit_return: Increase::Models::InboundCheckDeposit::DepositReturn | nil,
        front_image_file_id: String | nil,
        payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis,
        status: Increase::Models::InboundCheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::InboundCheckDeposit::Type
      }
    end
  end

  def test_decline
    response = @increase.inbound_check_deposits.decline("inbound_check_deposit_id")

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        accepted_at: Time | nil,
        account_id: String,
        account_number_id: String | nil,
        adjustments: ^(Increase::ArrayOf[Increase::Models::InboundCheckDeposit::Adjustment]),
        amount: Integer,
        back_image_file_id: String | nil,
        bank_of_first_deposit_routing_number: String | nil,
        check_number: String | nil,
        check_transfer_id: String | nil,
        created_at: Time,
        currency: Increase::Models::InboundCheckDeposit::Currency,
        declined_at: Time | nil,
        declined_transaction_id: String | nil,
        deposit_return: Increase::Models::InboundCheckDeposit::DepositReturn | nil,
        front_image_file_id: String | nil,
        payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis,
        status: Increase::Models::InboundCheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::InboundCheckDeposit::Type
      }
    end
  end

  def test_return__required_params
    response = @increase.inbound_check_deposits.return_(
      "inbound_check_deposit_id",
      reason: :altered_or_fictitious
    )

    assert_pattern do
      response => Increase::Models::InboundCheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        accepted_at: Time | nil,
        account_id: String,
        account_number_id: String | nil,
        adjustments: ^(Increase::ArrayOf[Increase::Models::InboundCheckDeposit::Adjustment]),
        amount: Integer,
        back_image_file_id: String | nil,
        bank_of_first_deposit_routing_number: String | nil,
        check_number: String | nil,
        check_transfer_id: String | nil,
        created_at: Time,
        currency: Increase::Models::InboundCheckDeposit::Currency,
        declined_at: Time | nil,
        declined_transaction_id: String | nil,
        deposit_return: Increase::Models::InboundCheckDeposit::DepositReturn | nil,
        front_image_file_id: String | nil,
        payee_name_analysis: Increase::Models::InboundCheckDeposit::PayeeNameAnalysis,
        status: Increase::Models::InboundCheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::InboundCheckDeposit::Type
      }
    end
  end
end
