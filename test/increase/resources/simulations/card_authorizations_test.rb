# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::CardAuthorizationsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.simulations.card_authorizations.create({amount: 1000})
    assert_kind_of(Increase::Models::CardAuthorizationCreateResponse, response)
  end
end