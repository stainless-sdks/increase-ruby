# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::FilesTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.files.create(file: StringIO.new("some file contents"), purpose: :check_image_front)

    assert_pattern do
      response => Increase::Models::File
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        direction: Increase::Models::File::Direction,
        filename: String | nil,
        idempotency_key: String | nil,
        mime_type: String,
        purpose: Increase::Models::File::Purpose,
        type: Increase::Models::File::Type
      }
    end
  end

  def test_retrieve
    response = @increase.files.retrieve("file_id")

    assert_pattern do
      response => Increase::Models::File
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        description: String | nil,
        direction: Increase::Models::File::Direction,
        filename: String | nil,
        idempotency_key: String | nil,
        mime_type: String,
        purpose: Increase::Models::File::Purpose,
        type: Increase::Models::File::Type
      }
    end
  end

  def test_list
    response = @increase.files.list

    assert_pattern do
      response => Increase::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Models::File
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        description: String | nil,
        direction: Increase::Models::File::Direction,
        filename: String | nil,
        idempotency_key: String | nil,
        mime_type: String,
        purpose: Increase::Models::File::Purpose,
        type: Increase::Models::File::Type
      }
    end
  end
end
