# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::DocumentsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.documents.create({account_id: "account_in71c4amph0vgo2qllky"})
    assert_kind_of(Increase::Models::Document, response)
  end
end