# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class IntrafiResourceTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end
end
