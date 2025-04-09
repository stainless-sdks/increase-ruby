# typed: strong

module Increase
  module Resources
    class Simulations
      class Documents
        # Simulates an tax document being created for an account.
        sig do
          params(
            account_id: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
          )
            .returns(Increase::Models::Document)
        end
        def create(
          # #/components/schemas/sandbox_create_a_tax_document_parameters/properties/account_id
          account_id:,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
