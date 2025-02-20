# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EventsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.events.retrieve("event_id")

    assert_pattern do
      response => Increase::Models::Event
    end

    assert_pattern do
      response => {
        id: String,
        associated_object_id: String,
        associated_object_type: String,
        category: Increase::Models::Event::Category,
        created_at: Time,
        type: Increase::Models::Event::Type
      }
    end
  end

  def test_list
    response = @increase.events.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Event
    end

    assert_pattern do
      row => {
        id: String,
        associated_object_id: String,
        associated_object_type: String,
        category: Increase::Models::Event::Category,
        created_at: Time,
        type: Increase::Models::Event::Type
      }
    end
  end
end
