# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ExportsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.exports.create({category: "account_statement_ofx"})
    assert_kind_of(Increase::Models::Export, response)
  end

  def test_retrieve
    response = @increase.exports.retrieve("export_id")
    assert_kind_of(Increase::Models::Export, response)
  end

  def test_list
    response = @increase.exports.list
    assert_kind_of(Increase::Page, response)
  end
end
