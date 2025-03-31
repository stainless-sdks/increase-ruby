# typed: strong

module Increase
  module Models
    class CheckTransferCreateParams < Increase::BaseModel
      extend Increase::Type::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the account that will send the transfer.
      sig { returns(String) }
      attr_accessor :account_id

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      attr_accessor :amount

      # Whether Increase will print and mail the check or if you will do it yourself.
      sig { returns(Increase::Models::CheckTransferCreateParams::FulfillmentMethod::OrSymbol) }
      attr_accessor :fulfillment_method

      # The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      sig { returns(String) }
      attr_accessor :source_account_number_id

      # Details relating to the physical check that Increase will print and mail. This
      #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #   included if any other `fulfillment_method` is provided.
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck)) }
      attr_reader :physical_check

      sig do
        params(
          physical_check: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck, Increase::Util::AnyHash)
        )
          .void
      end
      attr_writer :physical_check

      # Whether the transfer requires explicit approval via the dashboard or API.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_approval

      sig { params(require_approval: T::Boolean).void }
      attr_writer :require_approval

      # Details relating to the custom fulfillment you will perform. This is required if
      #   `fulfillment_method` is equal to `third_party`. It must not be included if any
      #   other `fulfillment_method` is provided.
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::ThirdParty)) }
      attr_reader :third_party

      sig do
        params(
          third_party: T.any(Increase::Models::CheckTransferCreateParams::ThirdParty, Increase::Util::AnyHash)
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
          physical_check: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck, Increase::Util::AnyHash),
          require_approval: T::Boolean,
          third_party: T.any(Increase::Models::CheckTransferCreateParams::ThirdParty, Increase::Util::AnyHash),
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      module FulfillmentMethod
        extend Increase::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol) }

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK =
          T.let(:physical_check, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol)

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY =
          T.let(:third_party, Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CheckTransferCreateParams::FulfillmentMethod::TaggedSymbol]) }
        def self.values
        end
      end

      class PhysicalCheck < Increase::BaseModel
        # Details for where Increase will mail the check.
        sig { returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress) }
        attr_reader :mailing_address

        sig do
          params(
            mailing_address: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress, Increase::Util::AnyHash)
          )
            .void
        end
        attr_writer :mailing_address

        # The descriptor that will be printed on the memo field on the check.
        sig { returns(String) }
        attr_accessor :memo

        # The name that will be printed on the check in the 'To:' field.
        sig { returns(String) }
        attr_accessor :recipient_name

        # The check number Increase should print on the check. This should not contain
        #   leading zeroes and must be unique across the `source_account_number`. If this is
        #   omitted, Increase will generate a check number for you.
        sig { returns(T.nilable(String)) }
        attr_reader :check_number

        sig { params(check_number: String).void }
        attr_writer :check_number

        # The descriptor that will be printed on the letter included with the check.
        sig { returns(T.nilable(String)) }
        attr_reader :note

        sig { params(note: String).void }
        attr_writer :note

        # The return address to be printed on the check. If omitted this will default to
        #   an Increase-owned address that will mark checks as delivery failed and shred
        #   them.
        sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)) }
        attr_reader :return_address

        sig do
          params(
            return_address: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress, Increase::Util::AnyHash)
          )
            .void
        end
        attr_writer :return_address

        # The text that will appear as the signature on the check in cursive font. If not
        #   provided, the check will be printed with 'No signature required'.
        sig { returns(T.nilable(String)) }
        attr_reader :signature_text

        sig { params(signature_text: String).void }
        attr_writer :signature_text

        # Details relating to the physical check that Increase will print and mail. This
        #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
        #   included if any other `fulfillment_method` is provided.
        sig do
          params(
            mailing_address: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress, Increase::Util::AnyHash),
            memo: String,
            recipient_name: String,
            check_number: String,
            note: String,
            return_address: T.any(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress, Increase::Util::AnyHash),
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
        )
        end

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
        def to_hash
        end

        class MailingAddress < Increase::BaseModel
          # The city component of the check's destination address.
          sig { returns(String) }
          attr_accessor :city

          # The first line of the address component of the check's destination address.
          sig { returns(String) }
          attr_accessor :line1

          # The postal code component of the check's destination address.
          sig { returns(String) }
          attr_accessor :postal_code

          # The US state component of the check's destination address.
          sig { returns(String) }
          attr_accessor :state

          # The second line of the address component of the check's destination address.
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # Details for where Increase will mail the check.
          sig do
            params(city: String, line1: String, postal_code: String, state: String, line2: String)
              .returns(T.attached_class)
          end
          def self.new(city:, line1:, postal_code:, state:, line2: nil)
          end

          sig do
            override.returns({city: String, line1: String, postal_code: String, state: String, line2: String})
          end
          def to_hash
          end
        end

        class ReturnAddress < Increase::BaseModel
          # The city of the return address.
          sig { returns(String) }
          attr_accessor :city

          # The first line of the return address.
          sig { returns(String) }
          attr_accessor :line1

          # The name of the return address.
          sig { returns(String) }
          attr_accessor :name

          # The postal code of the return address.
          sig { returns(String) }
          attr_accessor :postal_code

          # The US state of the return address.
          sig { returns(String) }
          attr_accessor :state

          # The second line of the return address.
          sig { returns(T.nilable(String)) }
          attr_reader :line2

          sig { params(line2: String).void }
          attr_writer :line2

          # The return address to be printed on the check. If omitted this will default to
          #   an Increase-owned address that will mark checks as delivery failed and shred
          #   them.
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
          def self.new(city:, line1:, name:, postal_code:, state:, line2: nil)
          end

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
          def to_hash
          end
        end
      end

      class ThirdParty < Increase::BaseModel
        # The check number you will print on the check. This should not contain leading
        #   zeroes. If this is omitted, Increase will generate a check number for you; you
        #   should inspect the response and use that check number.
        sig { returns(T.nilable(String)) }
        attr_reader :check_number

        sig { params(check_number: String).void }
        attr_writer :check_number

        # The pay-to name you will print on the check. If provided, this is used for
        #   [Positive Pay](/documentation/positive-pay). If this is omitted, Increase will
        #   be unable to validate the payee name when the check is deposited.
        sig { returns(T.nilable(String)) }
        attr_reader :recipient_name

        sig { params(recipient_name: String).void }
        attr_writer :recipient_name

        # Details relating to the custom fulfillment you will perform. This is required if
        #   `fulfillment_method` is equal to `third_party`. It must not be included if any
        #   other `fulfillment_method` is provided.
        sig { params(check_number: String, recipient_name: String).returns(T.attached_class) }
        def self.new(check_number: nil, recipient_name: nil)
        end

        sig { override.returns({check_number: String, recipient_name: String}) }
        def to_hash
        end
      end
    end
  end
end
