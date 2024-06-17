# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::BookkeepingEntrySetsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.bookkeeping_entry_sets.create(
      {entries: [{"account_id" => "bookkeeping_account_9husfpw68pzmve9dvvc7", "amount" => 100}, {"account_id" => "bookkeeping_account_t2obldz1rcu15zr54umg", "amount" => -100}]}
    )
    assert_kind_of(Increase::Models::BookkeepingEntrySet, response)
  end

  def test_retrieve
    response = @increase.bookkeeping_entry_sets.retrieve("string")
    assert_kind_of(Increase::Models::BookkeepingEntrySet, response)
  end

  def test_list
    response = @increase.bookkeeping_entry_sets.list 
    assert_kind_of(Increase::Page, response)
  end
end
