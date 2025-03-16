# typed: strong

module Increase
  module Models
    class CheckTransferCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the account that will send the transfer.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The transfer amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # Whether Increase will print and mail the check or if you will do it yourself.
      sig { returns(Symbol) }
      def fulfillment_method
      end

      sig { params(_: Symbol).returns(Symbol) }
      def fulfillment_method=(_)
      end

      # The identifier of the Account Number from which to send the transfer and print
      #   on the check.
      sig { returns(String) }
      def source_account_number_id
      end

      sig { params(_: String).returns(String) }
      def source_account_number_id=(_)
      end

      # Details relating to the physical check that Increase will print and mail. This
      #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
      #   included if any other `fulfillment_method` is provided.
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck)) }
      def physical_check
      end

      sig do
        params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck)
          .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck)
      end
      def physical_check=(_)
      end

      # Whether the transfer requires explicit approval via the dashboard or API.
      sig { returns(T.nilable(T::Boolean)) }
      def require_approval
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def require_approval=(_)
      end

      # Details relating to the custom fulfillment you will perform. This is required if
      #   `fulfillment_method` is equal to `third_party`. It must not be included if any
      #   other `fulfillment_method` is provided.
      sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::ThirdParty)) }
      def third_party
      end

      sig do
        params(_: Increase::Models::CheckTransferCreateParams::ThirdParty)
          .returns(Increase::Models::CheckTransferCreateParams::ThirdParty)
      end
      def third_party=(_)
      end

      sig do
        params(
          account_id: String,
          amount: Integer,
          fulfillment_method: Symbol,
          source_account_number_id: String,
          physical_check: Increase::Models::CheckTransferCreateParams::PhysicalCheck,
          require_approval: T::Boolean,
          third_party: Increase::Models::CheckTransferCreateParams::ThirdParty,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
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
              fulfillment_method: Symbol,
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
      class FulfillmentMethod < Increase::Enum
        abstract!

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class PhysicalCheck < Increase::BaseModel
        # Details for where Increase will mail the check.
        sig { returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress) }
        def mailing_address
        end

        sig do
          params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress)
            .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress)
        end
        def mailing_address=(_)
        end

        # The descriptor that will be printed on the memo field on the check.
        sig { returns(String) }
        def memo
        end

        sig { params(_: String).returns(String) }
        def memo=(_)
        end

        # The name that will be printed on the check in the 'To:' field.
        sig { returns(String) }
        def recipient_name
        end

        sig { params(_: String).returns(String) }
        def recipient_name=(_)
        end

        # The check number Increase should print on the check. This should not contain
        #   leading zeroes and must be unique across the `source_account_number`. If this is
        #   omitted, Increase will generate a check number for you.
        sig { returns(T.nilable(String)) }
        def check_number
        end

        sig { params(_: String).returns(String) }
        def check_number=(_)
        end

        # The descriptor that will be printed on the letter included with the check.
        sig { returns(T.nilable(String)) }
        def note
        end

        sig { params(_: String).returns(String) }
        def note=(_)
        end

        # The return address to be printed on the check. If omitted this will default to
        #   an Increase-owned address that will mark checks as delivery failed and shred
        #   them.
        sig { returns(T.nilable(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)) }
        def return_address
        end

        sig do
          params(_: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)
            .returns(Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress)
        end
        def return_address=(_)
        end

        # The text that will appear as the signature on the check in cursive font. If not
        #   provided, the check will be printed with 'No signature required'.
        sig { returns(T.nilable(String)) }
        def signature_text
        end

        sig { params(_: String).returns(String) }
        def signature_text=(_)
        end

        # Details relating to the physical check that Increase will print and mail. This
        #   is required if `fulfillment_method` is equal to `physical_check`. It must not be
        #   included if any other `fulfillment_method` is provided.
        sig do
          params(
            mailing_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::MailingAddress,
            memo: String,
            recipient_name: String,
            check_number: String,
            note: String,
            return_address: Increase::Models::CheckTransferCreateParams::PhysicalCheck::ReturnAddress,
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
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the address component of the check's destination address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The postal code component of the check's destination address.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # The US state component of the check's destination address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The second line of the address component of the check's destination address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

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
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          # The first line of the return address.
          sig { returns(String) }
          def line1
          end

          sig { params(_: String).returns(String) }
          def line1=(_)
          end

          # The name of the return address.
          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # The postal code of the return address.
          sig { returns(String) }
          def postal_code
          end

          sig { params(_: String).returns(String) }
          def postal_code=(_)
          end

          # The US state of the return address.
          sig { returns(String) }
          def state
          end

          sig { params(_: String).returns(String) }
          def state=(_)
          end

          # The second line of the return address.
          sig { returns(T.nilable(String)) }
          def line2
          end

          sig { params(_: String).returns(String) }
          def line2=(_)
          end

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
        def check_number
        end

        sig { params(_: String).returns(String) }
        def check_number=(_)
        end

        # Details relating to the custom fulfillment you will perform. This is required if
        #   `fulfillment_method` is equal to `third_party`. It must not be included if any
        #   other `fulfillment_method` is provided.
        sig { params(check_number: String).returns(T.attached_class) }
        def self.new(check_number: nil)
        end

        sig { override.returns({check_number: String}) }
        def to_hash
        end
      end
    end
  end
end
