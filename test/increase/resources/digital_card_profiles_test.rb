# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalCardProfilesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.digital_card_profiles.create(
      app_icon_file_id: "file_8zxqkwlh43wo144u8yec",
      background_image_file_id: "file_1ai913suu1zfn1pdetru",
      card_description: "MyBank Signature Card",
      description: "My Card Profile",
      issuer_name: "MyBank"
    )

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end
  end

  def test_retrieve
    response = @increase.digital_card_profiles.retrieve("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end
  end

  def test_list
    response = @increase.digital_card_profiles.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end

  def test_archive
    response = @increase.digital_card_profiles.archive("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end
  end

  def test_clone_
    response = @increase.digital_card_profiles.clone_("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end
  end
end
