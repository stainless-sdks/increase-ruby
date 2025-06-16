# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::InboundWireTransfersTest < Increase::Test::ResourceTest
  def test_create_required_params
    response =
      @client.simulations.inbound_wire_transfers.create(
        account_number_id: "account_number_v18nkfqm6afpsrvy82b2",
        amount: 1000
      )

    assert_pattern do
      response => Increase::InboundWireTransfer
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        account_number_id: String,
        amount: Integer,
        beneficiary_address_line1: String | nil,
        beneficiary_address_line2: String | nil,
        beneficiary_address_line3: String | nil,
        beneficiary_name: String | nil,
        beneficiary_reference: String | nil,
        created_at: Time,
        description: String,
        input_message_accountability_data: String | nil,
        originator_address_line1: String | nil,
        originator_address_line2: String | nil,
        originator_address_line3: String | nil,
        originator_name: String | nil,
        originator_routing_number: String | nil,
        originator_to_beneficiary_information: String | nil,
        originator_to_beneficiary_information_line1: String | nil,
        originator_to_beneficiary_information_line2: String | nil,
        originator_to_beneficiary_information_line3: String | nil,
        originator_to_beneficiary_information_line4: String | nil,
        reversal: Increase::InboundWireTransfer::Reversal | nil,
        sender_reference: String | nil,
        status: Increase::InboundWireTransfer::Status,
        type: Increase::InboundWireTransfer::Type
      }
    end
  end
end
