# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::PhysicalCardProfilesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.physical_card_profiles.create(
      {
        carrier_image_file_id: "file_h6v7mtipe119os47ehlu", contact_phone: "+16505046304", description: "My Card Profile", front_image_file_id: "file_o6aex13wm1jcc36sgcj1"
      }
    )
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCardProfile, response),
      response.class.to_s
    )
  end

  def test_retrieve
    response = @increase.physical_card_profiles.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCardProfile, response),
      response.class.to_s
    )
  end

  def test_archive
    response = @increase.physical_card_profiles.archive("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCardProfile, response),
      response.class.to_s
    )
  end

  def test_clone
    response = @increase.physical_card_profiles.clone("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::PhysicalCardProfile, response),
      response.class.to_s
    )
  end
end
