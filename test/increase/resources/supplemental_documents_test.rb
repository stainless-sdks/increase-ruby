# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::SupplementalDocumentsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.supplemental_documents.create(
      entity_id: "entity_n8y8tnk2p9339ti393yi",
      file_id: "file_makxrc67oh9l6sg7w9yc"
    )

    assert_pattern do
      response => Increase::Models::EntitySupplementalDocument
    end

    assert_pattern do
      response => {
        created_at: Time,
        entity_id: String,
        file_id: String,
        idempotency_key: String | nil,
        type: Increase::Models::EntitySupplementalDocument::Type
      }
    end
  end

  def test_list_required_params
    response = @increase.supplemental_documents.list(entity_id: "entity_id")

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::EntitySupplementalDocument
    end

    assert_pattern do
      row => {
        created_at: Time,
        entity_id: String,
        file_id: String,
        idempotency_key: String | nil,
        type: Increase::Models::EntitySupplementalDocument::Type
      }
    end
  end
end
