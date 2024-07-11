# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimeDecisionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.real_time_decisions.retrieve("real_time_decision_id")
    assert_kind_of(Increase::Models::RealTimeDecision, response)
  end

  def test_action
    response = @increase.real_time_decisions.action("real_time_decision_id")
    assert_kind_of(Increase::Models::RealTimeDecision, response)
  end
end
