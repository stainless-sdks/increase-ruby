# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EventSubscriptionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.event_subscriptions.create({url: "https://website.com/webhooks"})
    assert_kind_of(Increase::Models::EventSubscription, response)
  end

  def test_retrieve
    response = @increase.event_subscriptions.retrieve("event_subscription_id")
    assert_kind_of(Increase::Models::EventSubscription, response)
  end

  def test_update
    response = @increase.event_subscriptions.update("event_subscription_id")
    assert_kind_of(Increase::Models::EventSubscription, response)
  end

  def test_list
    response = @increase.event_subscriptions.list 
    assert_kind_of(Increase::Page, response)
  end
end
