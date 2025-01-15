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
  end
end
