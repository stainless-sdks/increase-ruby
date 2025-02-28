# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::GroupsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.groups.retrieve

    assert_pattern do
      response => Increase::Models::Group
    end

    assert_pattern do
      response => {
        id: String,
        ach_debit_status: Increase::Models::Group::ACHDebitStatus,
        activation_status: Increase::Models::Group::ActivationStatus,
        created_at: Time,
        type: Increase::Models::Group::Type
      }
    end
  end
end
