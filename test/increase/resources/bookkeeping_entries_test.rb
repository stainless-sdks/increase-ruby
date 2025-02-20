# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingEntriesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.bookkeeping_entries.retrieve("bookkeeping_entry_id")

    assert_pattern do
      response => Increase::Models::BookkeepingEntry
    end

    assert_pattern do
      response => {
        id: String,
        account_id: String,
        amount: Integer,
        created_at: Time,
        entry_set_id: String,
        type: Increase::Models::BookkeepingEntry::Type
      }
    end
  end

  def test_list
    response = @increase.bookkeeping_entries.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::BookkeepingEntry
    end

    assert_pattern do
      row => {
        id: String,
        account_id: String,
        amount: Integer,
        created_at: Time,
        entry_set_id: String,
        type: Increase::Models::BookkeepingEntry::Type
      }
    end
  end
end
