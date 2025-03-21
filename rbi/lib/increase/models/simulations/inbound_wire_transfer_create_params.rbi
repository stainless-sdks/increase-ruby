# typed: strong

module Increase
  module Models
    module Simulations
      class InboundWireTransferCreateParams < Increase::BaseModel
        extend Increase::RequestParameters::Converter
        include Increase::RequestParameters

        # The identifier of the Account Number the inbound Wire Transfer is for.
        sig { returns(String) }
        def account_number_id
        end

        sig { params(_: String).returns(String) }
        def account_number_id=(_)
        end

        # The transfer amount in cents. Must be positive.
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # The sending bank will set beneficiary_address_line1 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line1
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line1=(_)
        end

        # The sending bank will set beneficiary_address_line2 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line2
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line2=(_)
        end

        # The sending bank will set beneficiary_address_line3 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def beneficiary_address_line3
        end

        sig { params(_: String).returns(String) }
        def beneficiary_address_line3=(_)
        end

        # The sending bank will set beneficiary_name in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        def beneficiary_name
        end

        sig { params(_: String).returns(String) }
        def beneficiary_name=(_)
        end

        # The sending bank will set beneficiary_reference in production. You can simulate
        #   any value here.
        sig { returns(T.nilable(String)) }
        def beneficiary_reference
        end

        sig { params(_: String).returns(String) }
        def beneficiary_reference=(_)
        end

        # The sending bank will set originator_address_line1 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_address_line1
        end

        sig { params(_: String).returns(String) }
        def originator_address_line1=(_)
        end

        # The sending bank will set originator_address_line2 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_address_line2
        end

        sig { params(_: String).returns(String) }
        def originator_address_line2=(_)
        end

        # The sending bank will set originator_address_line3 in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_address_line3
        end

        sig { params(_: String).returns(String) }
        def originator_address_line3=(_)
        end

        # The sending bank will set originator_name in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        def originator_name
        end

        sig { params(_: String).returns(String) }
        def originator_name=(_)
        end

        # The sending bank will set originator_routing_number in production. You can
        #   simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_routing_number
        end

        sig { params(_: String).returns(String) }
        def originator_routing_number=(_)
        end

        # The sending bank will set originator_to_beneficiary_information_line1 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line1
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line1=(_)
        end

        # The sending bank will set originator_to_beneficiary_information_line2 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line2
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line2=(_)
        end

        # The sending bank will set originator_to_beneficiary_information_line3 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line3
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line3=(_)
        end

        # The sending bank will set originator_to_beneficiary_information_line4 in
        #   production. You can simulate any value here.
        sig { returns(T.nilable(String)) }
        def originator_to_beneficiary_information_line4
        end

        sig { params(_: String).returns(String) }
        def originator_to_beneficiary_information_line4=(_)
        end

        # The sending bank will set sender_reference in production. You can simulate any
        #   value here.
        sig { returns(T.nilable(String)) }
        def sender_reference
        end

        sig { params(_: String).returns(String) }
        def sender_reference=(_)
        end

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
            request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
        )
        end

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
        def to_hash
        end
      end
    end
  end
end
