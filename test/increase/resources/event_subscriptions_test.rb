# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EventSubscriptionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.event_subscriptions.create({url: "https://website.com/webhooks"})
    assert(
      Increase::Converter.same_type?(Increase::Models::EventSubscription, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @increase.event_subscriptions.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::EventSubscription, response),
      response.class.to_s
    )
  end

  def test_update
    response = @increase.event_subscriptions.update("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::EventSubscription, response),
      response.class.to_s
    )
  end
end
