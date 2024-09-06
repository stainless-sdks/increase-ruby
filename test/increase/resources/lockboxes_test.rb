# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::LockboxesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.lockboxes.create({account_id: "account_in71c4amph0vgo2qllky"})
    assert_kind_of(Increase::Models::Lockbox, response)
  end

  def test_retrieve
    response = @increase.lockboxes.retrieve("lockbox_id")
    assert_kind_of(Increase::Models::Lockbox, response)
  end

  def test_update
    response = @increase.lockboxes.update("lockbox_id")
    assert_kind_of(Increase::Models::Lockbox, response)
  end

  def test_list
    response = @increase.lockboxes.list 
    assert_kind_of(Increase::Page, response)
  end
end
