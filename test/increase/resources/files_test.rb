# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::FilesTest < Minitest::Test
  def before_all
    @increase = Increase::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_create_required_params
    response = @increase.files.create(file: StringIO.new("some file contents"), purpose: :check_image_front)

    assert_pattern do
      response => Increase::Models::File
    end
  end

  def test_retrieve
    response = @increase.files.retrieve("file_id")

    assert_pattern do
      response => Increase::Models::File
    end
  end

  def test_list
    response = @increase.files.list

    assert_pattern do
      response => Increase::Page
    end

    page = response.next_page
    assert_pattern do
      page => Increase::Page
    end

    row = response.to_enum.first
    assert_pattern do
      row => Increase::Models::File
    end
  end
end
