# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProgramsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @increase.programs.retrieve("program_id")

    assert_pattern do
      response => Increase::Models::Program
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Models::Program::Bank,
        billing_account_id: String | nil,
        created_at: Time,
        default_digital_card_profile_id: String | nil,
        interest_rate: String,
        name: String,
        type: Increase::Models::Program::Type,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @increase.programs.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::Program
    end

    assert_pattern do
      row => {
        id: String,
        bank: Increase::Models::Program::Bank,
        billing_account_id: String | nil,
        created_at: Time,
        default_digital_card_profile_id: String | nil,
        interest_rate: String,
        name: String,
        type: Increase::Models::Program::Type,
        updated_at: Time
      }
    end
  end
end
