# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExportsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.exports.create({category: "transaction_csv"})
    assert_kind_of(Increase::Models::Export, response)
  end

  def test_retrieve
    response = @increase.exports.retrieve("string")
    assert_kind_of(Increase::Models::Export, response)
  end

  def test_list
    response = @increase.exports.list 
    assert_kind_of(Increase::Page, response)
  end
end
