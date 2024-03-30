# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExportsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.exports.create({category: "transaction_csv"})
    assert(Increase::Converter.same_type?(Increase::Models::Export, response), response.class.to_s)
  end

  def test_retrieve
    response = @increase.exports.retrieve("string")
    assert(Increase::Converter.same_type?(Increase::Models::Export, response), response.class.to_s)
  end

  def test_list
    response = @increase.exports.list
    assert(Increase::Converter.same_type?(Increase::Models::Export, response), response.class.to_s)
  end
end
