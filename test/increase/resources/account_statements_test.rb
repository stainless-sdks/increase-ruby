# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::AccountStatementsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.account_statements.retrieve("string")
    assert(
      Increase::Converter.same_type?(Increase::Models::AccountStatement, response),
      response.class.to_s
    )
  end
end
