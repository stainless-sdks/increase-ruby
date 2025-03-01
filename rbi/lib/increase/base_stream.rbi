# typed: strong

module Increase
  class BaseStream
    Elem = type_member(:out)

    sig do
      params(
        url: URI::Generic,
        model: T.any(T::Class[T.anything], Increase::Converter),
        status: Integer,
        messages: T::Enumerable[Increase::Util::SSEMessage],
        response: Net::HTTPResponse
      )
        .void
    end
    def initialize(url:, model:, status:, messages:, response:)
    end

    sig { void }
    def close
    end

    sig { params(blk: T.proc.params(arg0: Elem).void).void }
    def for_each(&blk)
    end

    sig { returns(T::Enumerable[Elem]) }
    def to_enum
    end

    alias_method :enum_for, :to_enum
  end
end
