# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::CardsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.cards.create({account_id: "account_in71c4amph0vgo2qllky"})
    assert(Increase::Converter.same_type?(Increase::Models::Card, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.cards.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Card, response), response.class.to_s)
  end

  def test_update
    response = @increase.cards.update("string")
    assert(Increase::Converter.same_type?(Increase::Models::Card, response), response.class.to_s)
  end

  def test_list
    response = @increase.cards.list
    assert(Increase::Converter.same_type?(Increase::Page, response), response.class.to_s)
  end

  def test_retrieve_sensitive_details
    response = @increase.cards.retrieve_sensitive_details("string")
    assert(Increase::Converter.same_type?(Increase::Models::CardDetails, response), response.class.to_s)
  end
end
