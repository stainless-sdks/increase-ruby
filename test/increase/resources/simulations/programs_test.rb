# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::ProgramsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.programs.create({name: "For Benefit Of"})
    assert_kind_of(Increase::Models::Program, response)
  end
end
