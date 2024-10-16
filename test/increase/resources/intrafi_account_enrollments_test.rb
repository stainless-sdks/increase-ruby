# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::IntrafiAccountEnrollmentsTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.intrafi_account_enrollments.create(
      {account_id: "account_in71c4amph0vgo2qllky", email_address: "user@example.com"}
    )
    assert_kind_of(Increase::Models::IntrafiAccountEnrollment, response)
  end

  def test_retrieve
    response = @increase.intrafi_account_enrollments.retrieve("intrafi_account_enrollment_id")
    assert_kind_of(Increase::Models::IntrafiAccountEnrollment, response)
  end

  def test_list
    response = @increase.intrafi_account_enrollments.list
    assert_kind_of(Increase::Page, response)
  end

  def test_unenroll
    response = @increase.intrafi_account_enrollments.unenroll("intrafi_account_enrollment_id")
    assert_kind_of(Increase::Models::IntrafiAccountEnrollment, response)
  end
end
