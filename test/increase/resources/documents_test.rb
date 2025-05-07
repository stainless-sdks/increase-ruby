# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DocumentsTest < Increase::Test::ResourceTest
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
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

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
