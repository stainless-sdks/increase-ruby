# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiExclusionsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.intrafi_exclusions.create(bank_name: "Example Bank", entity_id: "entity_n8y8tnk2p9339ti393yi")

    assert_pattern do
      response => Increase::Models::IntrafiExclusion
    end
  end

  def test_retrieve
    response = @increase.intrafi_exclusions.retrieve("intrafi_exclusion_id")

    assert_pattern do
      response => Increase::Models::IntrafiExclusion
    end
  end

  def test_list
    response = @increase.intrafi_exclusions.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::IntrafiExclusion
    end
  end

  def test_archive
    response = @increase.intrafi_exclusions.archive("intrafi_exclusion_id")

    assert_pattern do
      response => Increase::Models::IntrafiExclusion
    end
  end
end
