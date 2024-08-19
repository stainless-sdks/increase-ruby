# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiExclusionsTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.intrafi_exclusions.create({bank_name: "Example Bank", entity_id: "entity_n8y8tnk2p9339ti393yi"})
    assert_kind_of(Increase::Models::IntrafiExclusion, response)
  end

  def test_retrieve
    response = @increase.intrafi_exclusions.retrieve("intrafi_exclusion_id")
    assert_kind_of(Increase::Models::IntrafiExclusion, response)
  end

  def test_list
    response = @increase.intrafi_exclusions.list 
    assert_kind_of(Increase::Page, response)
  end

  def test_archive
    response = @increase.intrafi_exclusions.archive("intrafi_exclusion_id")
    assert_kind_of(Increase::Models::IntrafiExclusion, response)
  end
end
