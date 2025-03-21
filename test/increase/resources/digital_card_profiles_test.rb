# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DigitalCardProfilesTest < Increase::Test::ResourceTest
  def test_create_required_params
    response =
      @increase.digital_card_profiles.create(
        app_icon_file_id: "file_8zxqkwlh43wo144u8yec",
        background_image_file_id: "file_1ai913suu1zfn1pdetru",
        card_description: "MyBank Signature Card",
        description: "My Card Profile",
        issuer_name: "MyBank"
      )

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end

    assert_pattern do
      response => {
        id: String,
        app_icon_file_id: String,
        background_image_file_id: String,
        card_description: String,
        contact_email: String | nil,
        contact_phone: String | nil,
        contact_website: String | nil,
        created_at: Time,
        description: String,
        idempotency_key: String | nil,
        issuer_name: String,
        status: Increase::Models::DigitalCardProfile::Status,
        text_color: Increase::Models::DigitalCardProfile::TextColor,
        type: Increase::Models::DigitalCardProfile::Type
      }
    end
  end

  def test_retrieve
    response = @increase.digital_card_profiles.retrieve("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end

    assert_pattern do
      response => {
        id: String,
        app_icon_file_id: String,
        background_image_file_id: String,
        card_description: String,
        contact_email: String | nil,
        contact_phone: String | nil,
        contact_website: String | nil,
        created_at: Time,
        description: String,
        idempotency_key: String | nil,
        issuer_name: String,
        status: Increase::Models::DigitalCardProfile::Status,
        text_color: Increase::Models::DigitalCardProfile::TextColor,
        type: Increase::Models::DigitalCardProfile::Type
      }
    end
  end

  def test_list
    response = @increase.digital_card_profiles.list

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Models::DigitalCardProfile
    end

    assert_pattern do
      row => {
        id: String,
        app_icon_file_id: String,
        background_image_file_id: String,
        card_description: String,
        contact_email: String | nil,
        contact_phone: String | nil,
        contact_website: String | nil,
        created_at: Time,
        description: String,
        idempotency_key: String | nil,
        issuer_name: String,
        status: Increase::Models::DigitalCardProfile::Status,
        text_color: Increase::Models::DigitalCardProfile::TextColor,
        type: Increase::Models::DigitalCardProfile::Type
      }
    end
  end

  def test_archive
    response = @increase.digital_card_profiles.archive("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end

    assert_pattern do
      response => {
        id: String,
        app_icon_file_id: String,
        background_image_file_id: String,
        card_description: String,
        contact_email: String | nil,
        contact_phone: String | nil,
        contact_website: String | nil,
        created_at: Time,
        description: String,
        idempotency_key: String | nil,
        issuer_name: String,
        status: Increase::Models::DigitalCardProfile::Status,
        text_color: Increase::Models::DigitalCardProfile::TextColor,
        type: Increase::Models::DigitalCardProfile::Type
      }
    end
  end

  def test_clone_
    response = @increase.digital_card_profiles.clone_("digital_card_profile_id")

    assert_pattern do
      response => Increase::Models::DigitalCardProfile
    end

    assert_pattern do
      response => {
        id: String,
        app_icon_file_id: String,
        background_image_file_id: String,
        card_description: String,
        contact_email: String | nil,
        contact_phone: String | nil,
        contact_website: String | nil,
        created_at: Time,
        description: String,
        idempotency_key: String | nil,
        issuer_name: String,
        status: Increase::Models::DigitalCardProfile::Status,
        text_color: Increase::Models::DigitalCardProfile::TextColor,
        type: Increase::Models::DigitalCardProfile::Type
      }
    end
  end
end
