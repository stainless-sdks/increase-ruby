# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::DocumentsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.documents.retrieve("document_id")
    assert_kind_of(Increase::Models::Document, response)
  end

  def test_list
    response = @increase.documents.list
    assert_kind_of(Increase::Page, response)
  end
end
