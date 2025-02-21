# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimePaymentsTransfersTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.real_time_payments_transfers.create(
      amount: 100,
      creditor_name: "Ian Crease",
      remittance_information: "Invoice 29582",
      source_account_number_id: "account_number_v18nkfqm6afpsrvy82b2"
    )

    assert_pattern do
      response => Increase::Models::RealTimePaymentsTransfer
    end
  end

  def test_retrieve
    response = @increase.real_time_payments_transfers.retrieve("real_time_payments_transfer_id")

    assert_pattern do
      response => Increase::Models::RealTimePaymentsTransfer
    end
  end

  def test_list
    response = @increase.real_time_payments_transfers.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::RealTimePaymentsTransfer
    end
  end
end
