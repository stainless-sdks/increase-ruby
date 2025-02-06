# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingEntrySetsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.bookkeeping_entry_sets.create(
      entries: [
        {account_id: "bookkeeping_account_9husfpw68pzmve9dvvc7", amount: 100},
        {account_id: "bookkeeping_account_t2obldz1rcu15zr54umg", amount: -100}
      ]
    )

    assert_pattern do
      response => Increase::Models::BookkeepingEntrySet
    end
  end

  def test_retrieve
    response = @increase.bookkeeping_entry_sets.retrieve("bookkeeping_entry_set_id")

    assert_pattern do
      response => Increase::Models::BookkeepingEntrySet
    end
  end

  def test_list
    response = @increase.bookkeeping_entry_sets.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end
end
