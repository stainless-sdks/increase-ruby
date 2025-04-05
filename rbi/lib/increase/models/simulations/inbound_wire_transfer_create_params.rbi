# typed: strong

module Increase
  module Models
    module Simulations
      class InboundWireTransferCreateParams < Increase::Internal::Type::BaseModel
        extend Increase::Internal::Type::RequestParameters::Converter
        include Increase::Internal::Type::RequestParameters

        # The identifier of the Account Number the inbound Wire Transfer is for.
        sig { returns(String) }
        attr_accessor :account_number_id

        # The transfer amount in cents. Must be positive.
        sig { returns(Integer) }
        attr_accessor :amount

        # The sending bank will set beneficiary_address_line1 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line1

        sig { params(beneficiary_address_line1: String).void }
        attr_writer :beneficiary_address_line1

        # The sending bank will set beneficiary_address_line2 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line2

        sig { params(beneficiary_address_line2: String).void }
        attr_writer :beneficiary_address_line2

        # The sending bank will set beneficiary_address_line3 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line3

        sig { params(beneficiary_address_line3: String).void }
        attr_writer :beneficiary_address_line3

        # The sending bank will set beneficiary_name in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_name

        sig { params(beneficiary_name: String).void }
        attr_writer :beneficiary_name

        # The sending bank will set beneficiary_reference in production. You can simulate
        #   any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_reference

        sig { params(beneficiary_reference: String).void }
        attr_writer :beneficiary_reference

        # The sending bank will set originator_address_line1 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line1

        sig { params(originator_address_line1: String).void }
        attr_writer :originator_address_line1

        # The sending bank will set originator_address_line2 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line2

        sig { params(originator_address_line2: String).void }
        attr_writer :originator_address_line2

        # The sending bank will set originator_address_line3 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line3

        sig { params(originator_address_line3: String).void }
        attr_writer :originator_address_line3

        # The sending bank will set originator_name in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_name

        sig { params(originator_name: String).void }
        attr_writer :originator_name

        # The sending bank will set originator_routing_number in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_routing_number

        sig { params(originator_routing_number: String).void }
        attr_writer :originator_routing_number

        # The sending bank will set originator_to_beneficiary_information_line1 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line1

        sig { params(originator_to_beneficiary_information_line1: String).void }
        attr_writer :originator_to_beneficiary_information_line1

        # The sending bank will set originator_to_beneficiary_information_line2 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line2

        sig { params(originator_to_beneficiary_information_line2: String).void }
        attr_writer :originator_to_beneficiary_information_line2

        # The sending bank will set originator_to_beneficiary_information_line3 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line3

        sig { params(originator_to_beneficiary_information_line3: String).void }
        attr_writer :originator_to_beneficiary_information_line3

        # The sending bank will set originator_to_beneficiary_information_line4 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line4

        sig { params(originator_to_beneficiary_information_line4: String).void }
        attr_writer :originator_to_beneficiary_information_line4

        # The sending bank will set sender_reference in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        attr_reader :sender_reference

        sig { params(sender_reference: String).void }
        attr_writer :sender_reference

        sig do
          params(
            account_number_id: String,
            amount: Integer,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            beneficiary_name: String,
            beneficiary_reference: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            originator_routing_number: String,
            originator_to_beneficiary_information_line1: String,
            originator_to_beneficiary_information_line2: String,
            originator_to_beneficiary_information_line3: String,
            originator_to_beneficiary_information_line4: String,
            sender_reference: String,
            request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          account_number_id:,
          amount:,
          beneficiary_address_line1: nil,
          beneficiary_address_line2: nil,
          beneficiary_address_line3: nil,
          beneficiary_name: nil,
          beneficiary_reference: nil,
          originator_address_line1: nil,
          originator_address_line2: nil,
          originator_address_line3: nil,
          originator_name: nil,
          originator_routing_number: nil,
          originator_to_beneficiary_information_line1: nil,
          originator_to_beneficiary_information_line2: nil,
          originator_to_beneficiary_information_line3: nil,
          originator_to_beneficiary_information_line4: nil,
          sender_reference: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                account_number_id: String,
                amount: Integer,
                beneficiary_address_line1: String,
                beneficiary_address_line2: String,
                beneficiary_address_line3: String,
                beneficiary_name: String,
                beneficiary_reference: String,
                originator_address_line1: String,
                originator_address_line2: String,
                originator_address_line3: String,
                originator_name: String,
                originator_routing_number: String,
                originator_to_beneficiary_information_line1: String,
                originator_to_beneficiary_information_line2: String,
                originator_to_beneficiary_information_line3: String,
                originator_to_beneficiary_information_line4: String,
                sender_reference: String,
                request_options: Increase::RequestOptions
              }
            )
        end
        def to_hash; end
      end
    end
  end
end
