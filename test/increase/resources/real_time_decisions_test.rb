# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimeDecisionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.real_time_decisions.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::RealTimeDecision, response),
      response.class.to_s
    )
  end

  def test_action
    response = @increase.real_time_decisions.action("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::RealTimeDecision, response),
      response.class.to_s
    )
  end
end