# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundACHTransfersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.simulations.inbound_ach_transfers.create(
      account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
      amount: 1000
    )

    assert_pattern do
      response => Increase::Models::InboundACHTransfer
    end

    assert_pattern do
      response => {
        id: String,
        acceptance: Increase::Models::InboundACHTransfer::Acceptance | nil,
        account_id: String,
        account_number_id: String,
        addenda: Increase::Models::InboundACHTransfer::Addenda | nil,
        amount: Integer,
        automatically_resolves_at: Time,
        created_at: Time,
        decline: Increase::Models::InboundACHTransfer::Decline | nil,
        direction: Increase::Models::InboundACHTransfer::Direction,
        effective_date: Date,
        expected_settlement_schedule: Increase::Models::InboundACHTransfer::ExpectedSettlementSchedule,
        international_addenda: Increase::Models::InboundACHTransfer::InternationalAddenda | nil,
        notification_of_change: Increase::Models::InboundACHTransfer::NotificationOfChange | nil,
        originator_company_descriptive_date: String | nil,
        originator_company_discretionary_data: String | nil,
        originator_company_entry_description: String,
        originator_company_id: String,
        originator_company_name: String,
        originator_routing_number: String,
        receiver_id_number: String | nil,
        receiver_name: String | nil,
        standard_entry_class_code: Increase::Models::InboundACHTransfer::StandardEntryClassCode,
        status: Increase::Models::InboundACHTransfer::Status,
        trace_number: String,
        transfer_return: Increase::Models::InboundACHTransfer::TransferReturn | nil,
        type: Increase::Models::InboundACHTransfer::Type
      }
    end
  end
end
