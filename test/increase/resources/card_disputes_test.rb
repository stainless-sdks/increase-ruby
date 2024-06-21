# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardDisputesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.card_disputes.create(
      {disputed_transaction_id: "transaction_uyrp7fld2ium70oa7oi", explanation: "Unauthorized recurring transaction."}
    )
    assert_kind_of(Increase::Models::CardDispute, response)
  end

  def test_retrieve
    response = @increase.card_disputes.retrieve("string")
    assert_kind_of(Increase::Models::CardDispute, response)
  end

  def test_list
    response = @increase.card_disputes.list 
    assert_kind_of(Increase::Page, response)
  end
end
