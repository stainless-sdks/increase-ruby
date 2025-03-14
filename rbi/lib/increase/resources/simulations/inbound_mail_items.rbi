# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundMailItems
        # Simulates an inbound mail item to your account, as if someone had mailed a
        #   physical check to one of your account's Lockboxes.
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

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
