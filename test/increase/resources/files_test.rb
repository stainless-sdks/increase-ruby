# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::FilesTest < Minitest::Test
  parallelize_me!

  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    skip("skipped: multipart requests aren't supported right now")
    response = @increase.files.create(
      {file: [StringIO.new("some file contents"), {filename: "file.txt"}], purpose: "check_image_front"}
    )
    assert_kind_of(Increase::Models::File, response)
  end

  def test_retrieve
    response = @increase.files.retrieve("file_id")
    assert_kind_of(Increase::Models::File, response)
  end

  def test_list
    response = @increase.files.list
    assert_kind_of(Increase::Page, response)
  end
end
