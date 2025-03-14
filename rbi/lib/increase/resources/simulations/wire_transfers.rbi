# typed: strong

module Increase
  module Resources
    class Simulations
      class WireTransfers
        # Simulates the reversal of a [Wire Transfer](#wire-transfers) by the Federal
        #   Reserve due to error conditions. This will also create a
        #   [Transaction](#transaction) to account for the returned funds. This Wire
        #   Transfer must first have a `status` of `complete`.
        sig do
          params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::WireTransfer)
        end
        def reverse(wire_transfer_id, request_options: {})
        end

        # Simulates the submission of a [Wire Transfer](#wire-transfers) to the Federal
        #   Reserve. This transfer must first have a `status` of `pending_approval` or
        #   `pending_creating`.
        sig do
          params(
            wire_transfer_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::WireTransfer)
        end
        def submit(wire_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
