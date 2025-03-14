# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundFundsHolds
        sig do
          params(
            inbound_funds_hold_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::Simulations::InboundFundsHoldReleaseResponse)
        end
        def release(inbound_funds_hold_id, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
