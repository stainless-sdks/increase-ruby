# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingEntrySetsTest < Increase::Test::ResourceTest
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

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        date: Time,
        entries: ^(Increase::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry]),
        idempotency_key: String | nil,
        transaction_id: String | nil,
        type: Increase::Models::BookkeepingEntrySet::Type
      }
    end
  end

  def test_retrieve
    response = @increase.bookkeeping_entry_sets.retrieve("bookkeeping_entry_set_id")

    assert_pattern do
      response => Increase::Models::BookkeepingEntrySet
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        date: Time,
        entries: ^(Increase::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry]),
        idempotency_key: String | nil,
        transaction_id: String | nil,
        type: Increase::Models::BookkeepingEntrySet::Type
      }
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

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::BookkeepingEntrySet
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        date: Time,
        entries: ^(Increase::ArrayOf[Increase::Models::BookkeepingEntrySet::Entry]),
        idempotency_key: String | nil,
        transaction_id: String | nil,
        type: Increase::Models::BookkeepingEntrySet::Type
      }
    end
  end
end
