# typed: strong

module Increase
  module Models
    module Simulations
      class InboundWireDrawdownRequestCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(String) }
        attr_accessor :beneficiary_account_number

        sig { returns(String) }
        attr_accessor :beneficiary_routing_number

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(String) }
        attr_accessor :message_to_recipient

        sig { returns(String) }
        attr_accessor :originator_account_number

        sig { returns(String) }
        attr_accessor :originator_routing_number

        sig { returns(String) }
        attr_accessor :recipient_account_number_id

        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line1

        sig { params(beneficiary_address_line1: String).void }
        attr_writer :beneficiary_address_line1

        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line2

        sig { params(beneficiary_address_line2: String).void }
        attr_writer :beneficiary_address_line2

        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_address_line3

        sig { params(beneficiary_address_line3: String).void }
        attr_writer :beneficiary_address_line3

        sig { returns(T.nilable(String)) }
        attr_reader :beneficiary_name

        sig { params(beneficiary_name: String).void }
        attr_writer :beneficiary_name

        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line1

        sig { params(originator_address_line1: String).void }
        attr_writer :originator_address_line1

        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line2

        sig { params(originator_address_line2: String).void }
        attr_writer :originator_address_line2

        sig { returns(T.nilable(String)) }
        attr_reader :originator_address_line3

        sig { params(originator_address_line3: String).void }
        attr_writer :originator_address_line3

        sig { returns(T.nilable(String)) }
        attr_reader :originator_name

        sig { params(originator_name: String).void }
        attr_writer :originator_name

        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line1

        sig { params(originator_to_beneficiary_information_line1: String).void }
        attr_writer :originator_to_beneficiary_information_line1

        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line2

        sig { params(originator_to_beneficiary_information_line2: String).void }
        attr_writer :originator_to_beneficiary_information_line2

        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line3

        sig { params(originator_to_beneficiary_information_line3: String).void }
        attr_writer :originator_to_beneficiary_information_line3

        sig { returns(T.nilable(String)) }
        attr_reader :originator_to_beneficiary_information_line4

        sig { params(originator_to_beneficiary_information_line4: String).void }
        attr_writer :originator_to_beneficiary_information_line4

        sig do
          params(
            amount: Integer,
            beneficiary_account_number: String,
            beneficiary_routing_number: String,
            currency: String,
            message_to_recipient: String,
            originator_account_number: String,
            originator_routing_number: String,
            recipient_account_number_id: String,
            beneficiary_address_line1: String,
            beneficiary_address_line2: String,
            beneficiary_address_line3: String,
            beneficiary_name: String,
            originator_address_line1: String,
            originator_address_line2: String,
            originator_address_line3: String,
            originator_name: String,
            originator_to_beneficiary_information_line1: String,
            originator_to_beneficiary_information_line2: String,
            originator_to_beneficiary_information_line3: String,
            originator_to_beneficiary_information_line4: String,
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          amount:,
          beneficiary_account_number:,
          beneficiary_routing_number:,
          currency:,
          message_to_recipient:,
          originator_account_number:,
          originator_routing_number:,
          recipient_account_number_id:,
          beneficiary_address_line1: nil,
          beneficiary_address_line2: nil,
          beneficiary_address_line3: nil,
          beneficiary_name: nil,
          originator_address_line1: nil,
          originator_address_line2: nil,
          originator_address_line3: nil,
          originator_name: nil,
          originator_to_beneficiary_information_line1: nil,
          originator_to_beneficiary_information_line2: nil,
          originator_to_beneficiary_information_line3: nil,
          originator_to_beneficiary_information_line4: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              beneficiary_account_number: String,
              beneficiary_routing_number: String,
              currency: String,
              message_to_recipient: String,
              originator_account_number: String,
              originator_routing_number: String,
              recipient_account_number_id: String,
              beneficiary_address_line1: String,
              beneficiary_address_line2: String,
              beneficiary_address_line3: String,
              beneficiary_name: String,
              originator_address_line1: String,
              originator_address_line2: String,
              originator_address_line3: String,
              originator_name: String,
              originator_to_beneficiary_information_line1: String,
              originator_to_beneficiary_information_line2: String,
              originator_to_beneficiary_information_line3: String,
              originator_to_beneficiary_information_line4: String,
              request_options: Increase::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
