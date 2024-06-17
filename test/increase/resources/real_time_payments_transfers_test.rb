# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimePaymentsTransfersTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.real_time_payments_transfers.create(
      {amount: 100, creditor_name: "Ian Crease", remittance_information: "Invoice 29582", source_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"}
    )
    assert_kind_of(Increase::Models::RealTimePaymentsTransfer, response)
  end

  def test_retrieve
    response = @increase.real_time_payments_transfers.retrieve("string")
    assert_kind_of(Increase::Models::RealTimePaymentsTransfer, response)
  end

  def test_list
    response = @increase.real_time_payments_transfers.list 
    assert_kind_of(Increase::Page, response)
  end
end
