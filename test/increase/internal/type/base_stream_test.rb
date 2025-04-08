require_relative "../../test_helper"

class Increase::Test::BaseStreamTest < Minitest::Test
  class FakeStream
    include Increase::Internal::Type::BaseStream

    def iterator = @stream
  end

  def test_gc_closing
    once = 0
    fused = Increase::Internal::Util.fused_enum([1, 2, 3].to_enum) do
      once = once.succ
    end
    FakeStream.new(model: nil, url: nil, status: nil, response: nil, stream: fused)
    GC.start
    assert_equal(1, once)
  end
end
