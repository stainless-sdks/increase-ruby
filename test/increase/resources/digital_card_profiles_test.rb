# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalCardProfilesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.digital_card_profiles.create(
      {app_icon_file_id: "file_8zxqkwlh43wo144u8yec", background_image_file_id: "file_1ai913suu1zfn1pdetru", card_description: "MyBank Signature Card", description: "My Card Profile", issuer_name: "MyBank"}
    )
    assert_kind_of(Increase::Models::DigitalCardProfile, response)
  end

  def test_retrieve
    response = @increase.digital_card_profiles.retrieve("string")
    assert_kind_of(Increase::Models::DigitalCardProfile, response)
  end

  def test_list
    response = @increase.digital_card_profiles.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_archive
    response = @increase.digital_card_profiles.archive("string")
    assert_kind_of(Increase::Models::DigitalCardProfile, response)
  end

  def test_clone
    response = @increase.digital_card_profiles.clone("string")
    assert_kind_of(Increase::Models::DigitalCardProfile, response)
  end
end
