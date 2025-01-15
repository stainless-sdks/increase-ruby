# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EventSubscriptionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.event_subscriptions.create(url: "https://website.com/webhooks")

    assert_pattern do
      response => Increase::Models::EventSubscription
    end
  end

  def test_retrieve
    response = @increase.event_subscriptions.retrieve("event_subscription_id")

    assert_pattern do
      response => Increase::Models::EventSubscription
    end
  end

  def test_update
    response = @increase.event_subscriptions.update("event_subscription_id")

    assert_pattern do
      response => Increase::Models::EventSubscription
    end
  end

  def test_list
    response = @increase.event_subscriptions.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end
end
