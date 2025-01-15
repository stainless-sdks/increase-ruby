# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::ProgramsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.simulations.programs.create(name: "For Benefit Of")

    assert_pattern do
      response => Increase::Models::Program
    end
  end
end
