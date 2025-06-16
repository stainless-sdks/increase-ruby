# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::ProgramsTest < Increase::Test::ResourceTest
  def test_retrieve
    response = @client.programs.retrieve("program_id")

    assert_pattern do
      response => Increase::Program
    end

    assert_pattern do
      response => {
        id: String,
        bank: Increase::Program::Bank,
        billing_account_id: String | nil,
        created_at: Time,
        default_digital_card_profile_id: String | nil,
        interest_rate: String,
        name: String,
        type: Increase::Program::Type,
        updated_at: Time
      }
    end
  end

  def test_list
    response = @client.programs.list

    assert_pattern do
      response => Increase::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Increase::Program
    end

    assert_pattern do
      row => {
        id: String,
        bank: Increase::Program::Bank,
        billing_account_id: String | nil,
        created_at: Time,
        default_digital_card_profile_id: String | nil,
        interest_rate: String,
        name: String,
        type: Increase::Program::Type,
        updated_at: Time
      }
    end
  end
end
