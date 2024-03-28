# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class EventsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.events.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Event, response), response.class.to_s)
  end

  def test_list
    response = @increase.events.list
    assert(Increase::Converter.same_type?(Increase::Models::Event, response), response.class.to_s)
  end
end
