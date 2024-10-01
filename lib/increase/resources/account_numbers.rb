# frozen_string_literal: true

module Increase
  module Resources
    class AccountNumbers
      def initialize(client:)
        @client = client
      end

      # Create an Account Number
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :account_id The Account the Account Number should belong to.
      # @option params [String] :name The name you choose for the Account Number.
      # @option params [InboundACH, nil] :inbound_ach Options related to how this Account Number should handle inbound ACH transfers.
      # @option params [InboundChecks, nil] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/account_numbers"
        req[:body] = params
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      # Retrieve an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number to retrieve.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def retrieve(account_number_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_numbers/#{account_number_id}"
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      # Update an Account Number
      #
      # @param account_number_id [String] The identifier of the Account Number.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [InboundACH, nil] :inbound_ach Options related to how this Account Number handles inbound ACH transfers.
      # @option params [InboundChecks, nil] :inbound_checks Options related to how this Account Number should handle inbound check
      #   withdrawals.
      # @option params [String, nil] :name The name you choose for the Account Number.
      # @option params [Symbol, Status, nil] :status This indicates if transfers can be made to the Account Number.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::AccountNumber]
      def update(account_number_id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/account_numbers/#{account_number_id}"
        req[:body] = params
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      # List Account Numbers
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :account_id Filter Account Numbers to those belonging to the specified Account.
      # @option params [Symbol, ACHDebitStatus, nil] :ach_debit_status The ACH Debit status to retrieve Account Numbers for.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Symbol, Status, nil] :status The status to retrieve Account Numbers for.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::AccountNumber>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/account_numbers"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::AccountNumber
        @client.request(req, opts)
      end

      class InboundACH < BaseModel
        # @!attribute [rw] debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active. If you do not specify this field, the default is `allowed`.
        #   @return [Symbol, InboundACH::DebitStatus]
        required :debit_status, enum: -> { InboundACH::DebitStatus }

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active. If you do not specify this field, the default is `allowed`.
        class DebitStatus < Increase::Enum
          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked
        end
      end

      class InboundChecks < BaseModel
        # @!attribute [rw] status
        #   How Increase should process checks with this account number printed on them. If you do not specify this field, the default is `check_transfers_only`.
        #   @return [Symbol, InboundChecks::Status]
        required :status, enum: -> { InboundChecks::Status }

        # How Increase should process checks with this account number printed on them. If you do not specify this field, the default is `check_transfers_only`.
        class Status < Increase::Enum
          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only
        end
      end

      class InboundACH < BaseModel
        # @!attribute [rw] debit_status
        #   Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active.
        #   @return [Symbol, InboundACH::DebitStatus]
        optional :debit_status, enum: -> { InboundACH::DebitStatus }

        # Whether ACH debits are allowed against this Account Number. Note that ACH debits will be declined if this is `allowed` but the Account Number is not active.
        class DebitStatus < Increase::Enum
          # ACH Debits are allowed.
          ALLOWED = :allowed

          # ACH Debits are blocked.
          BLOCKED = :blocked
        end
      end

      class InboundChecks < BaseModel
        # @!attribute [rw] status
        #   How Increase should process checks with this account number printed on them.
        #   @return [Symbol, InboundChecks::Status]
        required :status, enum: -> { InboundChecks::Status }

        # How Increase should process checks with this account number printed on them.
        class Status < Increase::Enum
          # Checks with this Account Number will be processed even if they are not associated with a Check Transfer.
          ALLOWED = :allowed

          # Checks with this Account Number will be processed only if they can be matched to an existing Check Transfer.
          CHECK_TRANSFERS_ONLY = :check_transfers_only
        end
      end

      # This indicates if transfers can be made to the Account Number.
      class Status < Increase::Enum
        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled
      end

      # The ACH Debit status to retrieve Account Numbers for.
      class ACHDebitStatus < Increase::Enum
        # ACH Debits are allowed.
        ALLOWED = :allowed

        # ACH Debits are blocked.
        BLOCKED = :blocked
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end

      # The status to retrieve Account Numbers for.
      class Status < Increase::Enum
        # The account number is active.
        ACTIVE = :active

        # The account number is temporarily disabled.
        DISABLED = :disabled

        # The account number is permanently disabled.
        CANCELED = :canceled
      end
    end
  end
end
