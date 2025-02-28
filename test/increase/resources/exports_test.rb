# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExportsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.exports.create(category: :account_statement_ofx)

    assert_pattern do
      response => Increase::Models::Export
    end

    assert_pattern do
      response => {
        id: String,
        category: Increase::Models::Export::Category,
        created_at: Time,
        file_download_url: String | nil,
        file_id: String | nil,
        idempotency_key: String | nil,
        status: Increase::Models::Export::Status,
        type: Increase::Models::Export::Type
      }
    end
  end

  def test_retrieve
    response = @increase.exports.retrieve("export_id")

    assert_pattern do
      response => Increase::Models::Export
    end

    assert_pattern do
      response => {
        id: String,
        category: Increase::Models::Export::Category,
        created_at: Time,
        file_download_url: String | nil,
        file_id: String | nil,
        idempotency_key: String | nil,
        status: Increase::Models::Export::Status,
        type: Increase::Models::Export::Type
      }
    end
  end

  def test_list
    response = @increase.exports.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Export
    end

    assert_pattern do
      row => {
        id: String,
        category: Increase::Models::Export::Category,
        created_at: Time,
        file_download_url: String | nil,
        file_id: String | nil,
        idempotency_key: String | nil,
        status: Increase::Models::Export::Status,
        type: Increase::Models::Export::Type
      }
    end
  end
end
