# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::OAuthApplicationsTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @increase.oauth_applications.retrieve("oauth_application_id")

    assert_pattern do
      response => Increase::Models::OAuthApplication
    end

    assert_pattern do
      response => {
        id: String,
        client_id: String,
        created_at: Time,
        deleted_at: Time | nil,
        name: String | nil,
        status: Increase::Models::OAuthApplication::Status,
        type: Increase::Models::OAuthApplication::Type
      }
    end
  end

  def test_list
    response = @increase.oauth_applications.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::OAuthApplication
    end

    assert_pattern do
      row => {
        id: String,
        client_id: String,
        created_at: Time,
        deleted_at: Time | nil,
        name: String | nil,
        status: Increase::Models::OAuthApplication::Status,
        type: Increase::Models::OAuthApplication::Type
      }
    end
  end
end
