# typed: strong

module Increase
  module Resources
    class Programs
      sig do
        params(
          program_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::Program)
      end
      def retrieve(program_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          limit: Integer,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::Program])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
