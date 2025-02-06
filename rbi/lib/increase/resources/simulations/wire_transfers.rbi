# typed: strong

module Increase
  module Resources
    class Simulations
      class WireTransfers
        sig do
          params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::WireTransfer)
        end
        def reverse(wire_transfer_id, request_options: {})
        end

        sig do
          params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::WireTransfer)
        end
        def submit(wire_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
