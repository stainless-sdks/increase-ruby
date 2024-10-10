# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::GroupsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_retrieve
    response = @increase.groups.retrieve
    assert_kind_of(Increase::Models::Group, response)
  end
end
