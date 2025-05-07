# frozen_string_literal: true

require_relative "../test_helper"

class Increase::Test::SorbetRuntimeSupportTest < Minitest::Test
  module E
    extend Increase::Internal::Type::Enum
  end

  module U
    extend Increase::Internal::Type::Union
  end

  class M < Increase::Internal::Type::BaseModel
  end

  def test_aliases
    assert_raises(Increase::Internal::SorbetRuntimeSupport::MissingSorbetRuntimeError) do
      Increase::Internal::AnyHash
    end

    # assert_raises(Increase::Internal::SorbetRuntimeSupport::MissingSorbetRuntimeError) do
    #   E::TaggedSymbol
    # end
    #
    # assert_raises(Increase::Internal::SorbetRuntimeSupport::MissingSorbetRuntimeError) do
    #   U::Variants
    # end

    assert_raises(Increase::Internal::SorbetRuntimeSupport::MissingSorbetRuntimeError) do
      M::OrHash
    end
  end
end
