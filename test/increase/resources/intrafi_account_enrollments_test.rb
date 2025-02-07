# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiAccountEnrollmentsTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.intrafi_account_enrollments.create(
      account_id: "account_in71c4amph0vgo2qllky",
      email_address: "user@example.com"
    )

    assert_pattern do
      response => Increase::Models::IntrafiAccountEnrollment
    end
  end

  def test_retrieve
    response = @increase.intrafi_account_enrollments.retrieve("intrafi_account_enrollment_id")

    assert_pattern do
      response => Increase::Models::IntrafiAccountEnrollment
    end
  end

  def test_list
    response = @increase.intrafi_account_enrollments.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end
  end

  def test_unenroll
    response = @increase.intrafi_account_enrollments.unenroll("intrafi_account_enrollment_id")

    assert_pattern do
      response => Increase::Models::IntrafiAccountEnrollment
    end
  end
end
