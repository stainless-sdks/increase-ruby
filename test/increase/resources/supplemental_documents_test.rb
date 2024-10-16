# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::SupplementalDocumentsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.supplemental_documents.create(
      {entity_id: "entity_n8y8tnk2p9339ti393yi", file_id: "file_makxrc67oh9l6sg7w9yc"}
    )
    assert_kind_of(Increase::Models::EntitySupplementalDocument, response)
  end

  def test_list_required_params
    response = @increase.supplemental_documents.list({entity_id: "entity_id"})
    assert_kind_of(Increase::Page, response)
  end
end
