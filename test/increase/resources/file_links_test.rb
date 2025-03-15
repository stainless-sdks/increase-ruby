# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::FileLinksTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.file_links.create(file_id: "file_makxrc67oh9l6sg7w9yc")

    assert_pattern do
      response => Increase::Models::FileLink
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        expires_at: Time,
        file_id: String,
        idempotency_key: String | nil,
        public_download_url: String,
        type: Increase::Models::FileLink::Type
      }
    end
  end

  def test_retrieve
    response = @increase.file_links.retrieve("file_link_id")

    assert_pattern do
      response => Increase::Models::FileLink
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        expires_at: Time,
        file_id: String,
        idempotency_key: String | nil,
        public_download_url: String,
        type: Increase::Models::FileLink::Type
      }
    end
  end

  def test_list_required_params
    response = @increase.file_links.list(file_id: "file_id")

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::FileLink
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        expires_at: Time,
        file_id: String,
        idempotency_key: String | nil,
        public_download_url: String,
        type: Increase::Models::FileLink::Type
      }
    end
  end
end
