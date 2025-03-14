# typed: strong

module Increase
  module Models
    module Simulations
      class InboundWireDrawdownRequestCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The amount being requested in cents.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The drawdown request's beneficiary's account number.
        sig { returns(String) }
        def beneficiary_account_number
        end

        sig { params(_: String).returns(String) }
        def beneficiary_account_number=(_)
        end

        # The drawdown request's beneficiary's routing number.
        sig { returns(String) }
        def beneficiary_routing_number
        end

        sig { params(_: String).returns(String) }
        def beneficiary_routing_number=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the amount being
        #   requested. Will always be "USD".
        sig { returns(String) }
        def currency
        end

        sig { params(_: String).returns(String) }
        def currency=(_)
        end

        # A message from the drawdown request's originator.
        sig { returns(String) }
        def message_to_recipient
        end

        sig { params(_: String).returns(String) }
        def message_to_recipient=(_)
        end

        # The drawdown request's originator's account number.
        sig { returns(String) }
        def originator_account_number
        end

        sig { params(_: String).returns(String) }
        def originator_account_number=(_)
        end

        # The drawdown request's originator's routing number.
        sig { returns(String) }
        def originator_routing_number
        end

        sig { params(_: String).returns(String) }
        def originator_routing_number=(_)
        end

        # The Account Number to which the recipient of this request is being requested to
        #   send funds from.
        sig { returns(String) }
        def recipient_account_number_id
        end

        sig { params(_: String).returns(String) }
        def recipient_account_number_id=(_)
        end

        # Line 1 of the drawdown request's beneficiary's address.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line1
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line1=(_)
        end

        # Line 2 of the drawdown request's beneficiary's address.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line2
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line2=(_)
        end

        # Line 3 of the drawdown request's beneficiary's address.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line3
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line3=(_)
        end

        # The drawdown request's beneficiary's name.
        sig { returns(T.nilable(String)) }
        def beneficiary_name
        end

        sig { params(_: String).returns(String) }
        def beneficiary_name=(_)
        end

        # Line 1 of the drawdown request's originator's address.
        sig { returns(T.nilable(String)) }
        def originator_address_line1
        end

        sig { params(_: String).returns(String) }
        def originator_address_line1=(_)
        end

        # Line 2 of the drawdown request's originator's address.
        sig { returns(T.nilable(String)) }
        def originator_address_line2
        end

        sig { params(_: String).returns(String) }
        def originator_address_line2=(_)
        end

        # Line 3 of the drawdown request's originator's address.
        sig { returns(T.nilable(String)) }
        def originator_address_line3
        end

        sig { params(_: String).returns(String) }
        def originator_address_line3=(_)
        end

        # The drawdown request's originator's name.
        sig { returns(T.nilable(String)) }
        def originator_name
        end

        sig { params(_: String).returns(String) }
        def originator_name=(_)
        end

        # Line 1 of the information conveyed from the originator of the message to the
        #   beneficiary.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line1
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line1=(_)
        end

        # Line 2 of the information conveyed from the originator of the message to the
        #   beneficiary.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line2
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line2=(_)
        end

        # Line 3 of the information conveyed from the originator of the message to the
        #   beneficiary.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line3
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line3=(_)
        end

        # Line 4 of the information conveyed from the originator of the message to the
        #   beneficiary.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line4
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line4=(_)
        end

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
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          override
            .returns(
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
