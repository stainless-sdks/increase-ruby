# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DocumentsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.documents.retrieve("document_id")

    assert_pattern do
      response => Increase::Models::Document
    end

    assert_pattern do
      response => {
        id: String,
        category: Increase::Models::Document::Category,
        created_at: Time,
        entity_id: String | nil,
        file_id: String,
        type: Increase::Models::Document::Type
      }
    end
  end

  def test_list
    response = @increase.documents.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Document
    end

    assert_pattern do
      row => {
        id: String,
        category: Increase::Models::Document::Category,
        created_at: Time,
        entity_id: String | nil,
        file_id: String,
        type: Increase::Models::Document::Type
      }
    end
  end
end
