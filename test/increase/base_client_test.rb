# frozen_string_literal: true

require File.expand_path("test_helper", __dir__)

class BaseClientTest < Test::Unit::TestCase
  def test_base_uri_https
    client = Increase::BaseClient.new(server_uri_string: "https://foo.bar/baz")
    assert_equal(URI.parse("https://foo.bar:443/baz"), client.base_uri)
  end

  def test_base_uri_http
    client = Increase::BaseClient.new(server_uri_string: "http://foo.bar/baz")
    assert_equal(URI.parse("http://foo.bar/baz"), client.base_uri)
  end

  def test_from_uri_string
    assert_equal(
      {
        host: "a.b",
        scheme: "h",
        path: "/c",
        query: {"d" => ["e"]},
        port: nil
      },
      Increase::BaseClient.new(server_uri_string: "h://nope/ignored").resolve_uri_elements({url: "h://a.b/c?d=e"}),
    )
  end

  def test_extra_query
    assert_equal(
      {
        host: "a.b",
        scheme: "h",
        path: "/c",
        query: {"d" => ["e"], "f" => ["g"]},
        port: nil
      },
      Increase::BaseClient.new(server_uri_string: "h://nope").resolve_uri_elements(
        {
          host: "a.b",
          scheme: "h",
          path: "/c",
          query: {"d" => ["e"]},
          extra_query: {
            "f" => ["g"]
          }
        }
      )
    )
  end

  def test_path_merged
    assert_equal(
      {
        host: "a.b",
        scheme: "h",
        path: "/c/c2",
        port: nil
      },
      Increase::BaseClient.new(server_uri_string: "h://a.b/c").resolve_uri_elements(
        {
          path: "c2"
        }
      )
    )
  end
end
