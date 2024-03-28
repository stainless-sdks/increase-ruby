# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class ProgramsResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.programs.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Program, response), response.class.to_s)
  end

  def test_list
    response = @increase.programs.list
    assert(Increase::Converter.same_type?(Increase::Models::Program, response), response.class.to_s)
  end
end
