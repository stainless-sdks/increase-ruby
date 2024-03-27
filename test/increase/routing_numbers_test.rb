# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class RoutingNumbersResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_list_required_params
    response = @increase.routing_numbers.list({routing_number: "xxxxxxxxx"})
    assert(
      Increase::Converter.same_type?(Increase::Models::RoutingNumber, response),
      response.class.to_s
    )
  end
end
