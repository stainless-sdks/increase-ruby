# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundMailItems
        sig do
          params(
            amount: Integer,
            lockbox_id: String,
            contents_file_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::InboundMailItem)
        end
        def create(amount:, lockbox_id:, contents_file_id: nil, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
