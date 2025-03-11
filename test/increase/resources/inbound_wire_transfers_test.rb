# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::InboundWireTransfersTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @increase.inbound_wire_transfers.retrieve("inbound_wire_transfer_id")

    assert_pattern do
      response => Increase::Models::InboundWireTransfer
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
        sender_reference: String | nil,
        status: Increase::Models::InboundWireTransfer::Status,
        type: Increase::Models::InboundWireTransfer::Type
      }
    end
  end

  def test_list
    response = @increase.inbound_wire_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::InboundWireTransfer
    end

    assert_pattern do
      row => {
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
        sender_reference: String | nil,
        status: Increase::Models::InboundWireTransfer::Status,
        type: Increase::Models::InboundWireTransfer::Type
      }
    end
  end
end
