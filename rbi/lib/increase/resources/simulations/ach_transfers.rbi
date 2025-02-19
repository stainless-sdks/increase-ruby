# typed: strong

module Increase
  module Resources
    class Simulations
      class ACHTransfers
        sig do
          params(
              ach_transfer_id: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::ACHTransfer)
        end
        def acknowledge(ach_transfer_id, request_options: {})
        end

        sig do
          params(
              ach_transfer_id: String,
              change_code: Symbol,
              corrected_data: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::ACHTransfer)
        end
        def create_notification_of_change(ach_transfer_id, change_code:, corrected_data:, request_options: {})
        end

        sig do
          params(
              ach_transfer_id: String,
              reason: Symbol,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::ACHTransfer)
        end
        def return_(ach_transfer_id, reason: nil, request_options: {})
        end

        sig do
          params(
              ach_transfer_id: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::ACHTransfer)
        end
        def settle(ach_transfer_id, request_options: {})
        end

        sig do
          params(
              ach_transfer_id: String,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::ACHTransfer)
        end
        def submit(ach_transfer_id, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
