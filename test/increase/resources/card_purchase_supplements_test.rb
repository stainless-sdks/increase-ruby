# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardPurchaseSupplementsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.card_purchase_supplements.retrieve("card_purchase_supplement_id")

    assert_pattern do
      response => Increase::Models::CardPurchaseSupplement
    end

    assert_pattern do
      response => {
        id: String,
        card_payment_id: String | nil,
        invoice: Increase::Models::CardPurchaseSupplement::Invoice | nil,
        line_items: ^(Increase::ArrayOf[Increase::Models::CardPurchaseSupplement::LineItem]) | nil,
        transaction_id: String,
        type: Increase::Models::CardPurchaseSupplement::Type
      }
    end
  end

  def test_list
    response = @increase.card_purchase_supplements.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::CardPurchaseSupplement
    end

    assert_pattern do
      row => {
        id: String,
        card_payment_id: String | nil,
        invoice: Increase::Models::CardPurchaseSupplement::Invoice | nil,
        line_items: ^(Increase::ArrayOf[Increase::Models::CardPurchaseSupplement::LineItem]) | nil,
        transaction_id: String,
        type: Increase::Models::CardPurchaseSupplement::Type
      }
    end
  end
end
