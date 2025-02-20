# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::OAuthConnectionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.oauth_connections.retrieve("x")

    assert_pattern do
      response => Increase::Models::OAuthConnection
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        deleted_at: Time | nil,
        group_id: String,
        oauth_application_id: String,
        status: Increase::Models::OAuthConnection::Status,
        type: Increase::Models::OAuthConnection::Type
      }
    end
  end

  def test_list
    response = @increase.oauth_connections.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::OAuthConnection
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        deleted_at: Time | nil,
        group_id: String,
        oauth_application_id: String,
        status: Increase::Models::OAuthConnection::Status,
        type: Increase::Models::OAuthConnection::Type
      }
    end
  end
end
