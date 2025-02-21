# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::RealTimeDecisionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.real_time_decisions.retrieve("real_time_decision_id")

    assert_pattern do
      response => Increase::Models::RealTimeDecision
    end
  end

  def test_action
    response = @increase.real_time_decisions.action("real_time_decision_id")

    assert_pattern do
      response => Increase::Models::RealTimeDecision
    end
  end
end
