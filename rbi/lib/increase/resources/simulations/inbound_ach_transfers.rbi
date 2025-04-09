# typed: strong

module Increase
  module Resources
    class Simulations
      class InboundACHTransfers
        # Simulates an inbound ACH transfer to your account. This imitates initiating a
        # transfer to an Increase account from a different financial institution. The
        # transfer may be either a credit or a debit depending on if the `amount` is
        # positive or negative. The result of calling this API will contain the created
        # transfer. You can pass a `resolve_at` parameter to allow for a window to
        # [action on the Inbound ACH Transfer](https://increase.com/documentation/receiving-ach-transfers).
        # Alternatively, if you don't pass the `resolve_at` parameter the result will
        # contain either a [Transaction](#transactions) or a
        # [Declined Transaction](#declined-transactions) depending on whether or not the
        # transfer is allowed.
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
            standard_entry_class_code: Increase::Models::Simulations::InboundACHTransferCreateParams::StandardEntryClassCode::OrSymbol,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::InboundACHTransfer)
        end
        def create(
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/account_number_id
          account_number_id:,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/amount
          amount:,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/company_descriptive_date
          company_descriptive_date: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/company_discretionary_data
          company_discretionary_data: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/company_entry_description
          company_entry_description: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/company_id
          company_id: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/company_name
          company_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/receiver_id_number
          receiver_id_number: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/receiver_name
          receiver_name: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/resolve_at
          resolve_at: nil,
          # #/components/schemas/sandbox_create_an_inbound_ach_transfer_parameters/properties/standard_entry_class_code
          standard_entry_class_code: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
