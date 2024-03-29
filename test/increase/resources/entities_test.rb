# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EntitiesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.entities.create({structure: "corporation"})
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.entities.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end

  def test_list
    response = @increase.entities.list
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end

  def test_archive
    response = @increase.entities.archive("string")
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end

  def test_confirm
    response = @increase.entities.confirm("string")
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end

  def test_update_address_required_params
    response = @increase.entities.update_address(
      "string",
      {
        address: {
          "line1" => "33 Liberty Street",
          "city" => "New York",
          "state" => "NY",
          "zip" => "10045"
        }
      }
    )
    assert(Increase::Converter.same_type?(Increase::Models::Entity, response), response.class.to_s)
  end
end