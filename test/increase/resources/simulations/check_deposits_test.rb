# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::CheckDepositsTest < Increase::Test::ResourceTest
  def test_reject
    response = @increase.simulations.check_deposits.reject("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        back_image_file_id: String | nil,
        created_at: Time,
        deposit_acceptance: Increase::Models::CheckDeposit::DepositAcceptance | nil,
        deposit_rejection: Increase::Models::CheckDeposit::DepositRejection | nil,
        deposit_return: Increase::Models::CheckDeposit::DepositReturn | nil,
        deposit_submission: Increase::Models::CheckDeposit::DepositSubmission | nil,
        description: String | nil,
        front_image_file_id: String,
        idempotency_key: String | nil,
        inbound_funds_hold: Increase::Models::CheckDeposit::InboundFundsHold | nil,
        inbound_mail_item_id: String | nil,
        lockbox_id: String | nil,
        status: Increase::Models::CheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::CheckDeposit::Type
      }
    end
  end

  def test_return_
    response = @increase.simulations.check_deposits.return_("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        back_image_file_id: String | nil,
        created_at: Time,
        deposit_acceptance: Increase::Models::CheckDeposit::DepositAcceptance | nil,
        deposit_rejection: Increase::Models::CheckDeposit::DepositRejection | nil,
        deposit_return: Increase::Models::CheckDeposit::DepositReturn | nil,
        deposit_submission: Increase::Models::CheckDeposit::DepositSubmission | nil,
        description: String | nil,
        front_image_file_id: String,
        idempotency_key: String | nil,
        inbound_funds_hold: Increase::Models::CheckDeposit::InboundFundsHold | nil,
        inbound_mail_item_id: String | nil,
        lockbox_id: String | nil,
        status: Increase::Models::CheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::CheckDeposit::Type
      }
    end
  end

  def test_submit
    response = @increase.simulations.check_deposits.submit("check_deposit_id")

    assert_pattern do
      response => Increase::Models::CheckDeposit
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        back_image_file_id: String | nil,
        created_at: Time,
        deposit_acceptance: Increase::Models::CheckDeposit::DepositAcceptance | nil,
        deposit_rejection: Increase::Models::CheckDeposit::DepositRejection | nil,
        deposit_return: Increase::Models::CheckDeposit::DepositReturn | nil,
        deposit_submission: Increase::Models::CheckDeposit::DepositSubmission | nil,
        description: String | nil,
        front_image_file_id: String,
        idempotency_key: String | nil,
        inbound_funds_hold: Increase::Models::CheckDeposit::InboundFundsHold | nil,
        inbound_mail_item_id: String | nil,
        lockbox_id: String | nil,
        status: Increase::Models::CheckDeposit::Status,
        transaction_id: String | nil,
        type: Increase::Models::CheckDeposit::Type
      }
    end
  end
end
