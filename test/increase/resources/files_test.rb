# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::Resources::FilesTest < Test::Unit::TestCase
  def setup
    @increase = Increase::Client.new(base_url: "http://localhost:4010", api_key: "My API Key")
  end

  def test_create_required_params
    response = @increase.files.create({file: nil, purpose: "check_image_front"})
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
