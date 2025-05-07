# frozen_string_literal: true

require_relative "../../test_helper"

class Increase::Test::Resources::Simulations::DocumentsTest < Increase::Test::ResourceTest
  def test_create_required_params
    response = @increase.simulations.documents.create(account_id: "account_in71c4amph0vgo2qllky")

    assert_pattern do
      response => Increase::Document
    end

    assert_pattern do
      response => {
        id: String,
        category: Increase::Document::Category,
        created_at: Time,
        entity_id: String | nil,
        file_id: String,
        type: Increase::Document::Type
      }
    end
  end
end
