# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
        sig do
          params(
              account_number_id: String,
              amount: Integer,
              company_descriptive_date: String,
              company_discretionary_data: String,
              company_entry_description: String,
              company_id: String,
              company_name: String,
              receiver_id_number: String,
              receiver_name: String,
              resolve_at: Time,
              standard_entry_class_code: Symbol,
              request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
            )
            .returns(Increase::Models::InboundACHTransfer)
        end
        def create(
          account_number_id:,
          amount:,
          company_descriptive_date: nil,
          company_discretionary_data: nil,
          company_entry_description: nil,
          company_id: nil,
          company_name: nil,
          receiver_id_number: nil,
          receiver_name: nil,
          resolve_at: nil,
          standard_entry_class_code: nil,
          request_options: {}
        )
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
