# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::EntitiesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.entities.create({structure: "corporation"})
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_retrieve
    response = @increase.entities.retrieve("entity_id")
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_list
    response = @increase.entities.list
    assert_kind_of(Increase::Page, response)
  end

  def test_archive
    response = @increase.entities.archive("entity_id")
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_archive_beneficial_owner_required_params
    response = @increase.entities.archive_beneficial_owner(
      "entity_id",
      {beneficial_owner_id: "entity_setup_beneficial_owner_submission_vgkyk7dj5eb4sfhdbkx7"}
    )
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_confirm
    response = @increase.entities.confirm("entity_id")
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_create_beneficial_owner_required_params
    response = @increase.entities.create_beneficial_owner(
      "entity_id",
      {
        beneficial_owner: {
          "individual" => {
            "address" => {
              "city" => "New York",
              "line1" => "33 Liberty Street",
              "state" => "NY",
              "zip" => "10045"
            },
            "date_of_birth" => "1970-01-31",
            "identification" => {"method" => "social_security_number", "number" => "078051120"},
            "name" => "Ian Crease"
          },
          "prongs" => ["ownership"]
        }
      }
    )
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_update_address_required_params
    response = @increase.entities.update_address(
      "entity_id",
      {address: {"city" => "New York", "line1" => "33 Liberty Street", "state" => "NY", "zip" => "10045"}}
    )
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_update_beneficial_owner_address_required_params
    response = @increase.entities.update_beneficial_owner_address(
      "entity_id",
      {
        address: {"city" => "New York", "line1" => "33 Liberty Street", "state" => "NY", "zip" => "10045"},
        beneficial_owner_id: "entity_setup_beneficial_owner_submission_vgkyk7dj5eb4sfhdbkx7"
      }
    )
    assert_kind_of(Increase::Models::Entity, response)
  end

  def test_update_industry_code_required_params
    response = @increase.entities.update_industry_code("entity_id", {industry_code: "5132"})
    assert_kind_of(Increase::Models::Entity, response)
  end
end
