# typed: strong

module Increase
  module Models
    class CheckTransferCreateParams < Increase::Internal::Type::BaseModel
      extend Increase::Internal::Type::RequestParameters::Converter
      include Increase::Internal::Type::RequestParameters

      # #/components/schemas/create_a_check_transfer_parameters/properties/account_id
      sig { returns(String) }
      attr_accessor :account_id

      # #/components/schemas/create_a_check_transfer_parameters/properties/amount
      sig { returns(Integer) }
      attr_accessor :amount

      # #/components/schemas/create_a_check_transfer_parameters/properties/fulfillment_method
      sig { returns(Increase::Models::CheckTransferCreateParams::FulfillmentMethod::OrSymbol) }
      attr_accessor :fulfillment_method

      # #/components/schemas/create_a_check_transfer_parameters/properties/source_account_number_id
      sig { returns(String) }
      attr_accessor :source_account_number_id

      # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck)) }
      attr_reader :physical_check

      sig do
        params(
          physical_check: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :physical_check

      # #/components/schemas/create_a_check_transfer_parameters/properties/require_approval
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      # #/components/schemas/create_a_check_transfer_parameters/properties/third_party
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::ThirdParty)) }
      attr_reader :third_party

      sig do
        params(
          third_party: T.any(Increase::Models::CheckTransferCreateParams::ThirdParty, Increase::Internal::AnyHash)
        )
          .void
      end
      attr_writer :third_party

      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Increase::Models::CheckTransferCreateParams::FulfillmentMethod::OrSymbol,
          source_account_number_id: String,
          physical_check: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck, Increase::Internal::AnyHash),
          require_approval: T::Boolean,
          third_party: T.any(Increase::Models::CheckTransferCreateParams::ThirdParty, Increase::Internal::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        account_id:,
        amount:,
        fulfillment_method:,
        source_account_number_id:,
        physical_check: nil,
        require_approval: nil,
        third_party: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              account_id: String,
              amount: Integer,
              fulfillment_method: Increase::Models::CheckTransferCreateParams::FulfillmentMethod::OrSymbol,
              source_account_number_id: String,
              physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
              require_approval: T::Boolean,
              third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash; end

      # #/components/schemas/create_a_check_transfer_parameters/properties/fulfillment_method
      module FulfillmentMethod
        extend Increase::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol) }

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK =
          T.let(:physical_check, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol)

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY =
          T.let(:third_party, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol]) }
        def self.values; end
      end

      class PhysicalCheck < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address
        sig { returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress) }
        attr_reader :mailing_address

        sig do
          params(
            mailing_address: T.any(
              Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :mailing_address

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/memo
        sig { returns(String) }
        attr_accessor :memo

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/recipient_name
        sig { returns(String) }
        attr_accessor :recipient_name

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/check_number
        sig { returns(T.nilable(String)) }
        attr_reader :check_number

        sig { params(check_number: String).void }
        attr_writer :check_number

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/note
        sig { returns(T.nilable(String)) }
        attr_reader :note

        sig { params(note: String).void }
        attr_writer :note

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address
        sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)) }
        attr_reader :return_address

        sig do
          params(
            return_address: T.any(
              Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
              Increase::Internal::AnyHash
            )
          )
            .void
        end
        attr_writer :return_address

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/signature_text
        sig { returns(T.nilable(String)) }
        attr_reader :signature_text

        sig { params(signature_text: String).void }
        attr_writer :signature_text

        # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check
        sig do
          params(
            mailing_address: T.any(
              Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
              Increase::Internal::AnyHash
            ),
            memo: String,
            recipient_name: String,
            check_number: String,
            note: String,
            return_address: T.any(
              Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
              Increase::Internal::AnyHash
            ),
            signature_text: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          mailing_address:,
          memo:,
          recipient_name:,
          check_number: nil,
          note: nil,
          return_address: nil,
          signature_text: nil
        ); end
        sig do
          override
            .returns(
              {
                mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
                memo: String,
                recipient_name: String,
                check_number: String,
                note: String,
                return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
                signature_text: String
              }
            )
        end
        def to_hash; end

        class MailingAddress < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/postal_code
          sig { returns(String) }
          attr_accessor :postal_code

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/mailing_address
          sig do
            params(city: String, line1: String, postal_code: String, state: String, line2: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, postal_code:, state:, line2: nil); end

          sig do
            override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
          end
          def to_hash; end
        end

        class ReturnAddress < Increase::Internal::Type::BaseModel
          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/city
          sig { returns(String) }
          attr_accessor :city

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/line1
          sig { returns(String) }
          attr_accessor :line1

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/name
          sig { returns(String) }
          attr_accessor :name

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/postal_code
          sig { returns(String) }
          attr_accessor :postal_code

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/state
          sig { returns(String) }
          attr_accessor :state

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address/properties/line2
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # #/components/schemas/create_a_check_transfer_parameters/properties/physical_check/properties/return_address
          sig do
            params(
              city: String,
              line1: String,
              name: String,
              postal_code: String,
              state: String,
              line2: String
            )
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, name:, postal_code:, state:, line2: nil); end

          sig do
            override
              .returns({
                         city: String,
                         line1: String,
                         name: String,
                         postal_code: String,
                         state: String,
                         line2: String
                       })
          end
          def to_hash; end
        end
      end

      class ThirdParty < Increase::Internal::Type::BaseModel
        # #/components/schemas/create_a_check_transfer_parameters/properties/third_party/properties/check_number
        sig { returns(T.nilable(String)) }
        attr_reader :check_number

        sig { params(check_number: String).void }
        attr_writer :check_number

        # #/components/schemas/create_a_check_transfer_parameters/properties/third_party/properties/recipient_name
        sig { returns(T.nilable(String)) }
        attr_reader :recipient_name

        sig { params(recipient_name: String).void }
        attr_writer :recipient_name

        # #/components/schemas/create_a_check_transfer_parameters/properties/third_party
        sig { params(check_number: String, recipient_name: String).returns(T.attached_class) }
        def self.new(check_number: nil, recipient_name: nil); end

        sig { override.returns({check_number: String, recipient_name: String}) }
        def to_hash; end
      end
    end
  end
end
