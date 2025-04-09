# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::WireTransfers#create
    class WireTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/wire_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/wire_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   #/components/schemas/wire_transfer/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute amount
      #   #/components/schemas/wire_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   #/components/schemas/wire_transfer/properties/approval
      #
      #   @return [Increase::Models::WireTransfer::Approval, nil]
      required :approval, -> { Increase::Models::WireTransfer::Approval }, nil?: true

      # @!attribute beneficiary_address_line1
      #   #/components/schemas/wire_transfer/properties/beneficiary_address_line1
      #
      #   @return [String, nil]
      required :beneficiary_address_line1, String, nil?: true

      # @!attribute beneficiary_address_line2
      #   #/components/schemas/wire_transfer/properties/beneficiary_address_line2
      #
      #   @return [String, nil]
      required :beneficiary_address_line2, String, nil?: true

      # @!attribute beneficiary_address_line3
      #   #/components/schemas/wire_transfer/properties/beneficiary_address_line3
      #
      #   @return [String, nil]
      required :beneficiary_address_line3, String, nil?: true

      # @!attribute beneficiary_name
      #   #/components/schemas/wire_transfer/properties/beneficiary_name
      #
      #   @return [String, nil]
      required :beneficiary_name, String, nil?: true

      # @!attribute cancellation
      #   #/components/schemas/wire_transfer/properties/cancellation
      #
      #   @return [Increase::Models::WireTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::WireTransfer::Cancellation }, nil?: true

      # @!attribute created_at
      #   #/components/schemas/wire_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   #/components/schemas/wire_transfer/properties/created_by
      #
      #   @return [Increase::Models::WireTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::WireTransfer::CreatedBy }, nil?: true

      # @!attribute currency
      #   #/components/schemas/wire_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::WireTransfer::Currency]
      required :currency, enum: -> { Increase::Models::WireTransfer::Currency }

      # @!attribute external_account_id
      #   #/components/schemas/wire_transfer/properties/external_account_id
      #
      #   @return [String, nil]
      required :external_account_id, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/wire_transfer/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute message_to_recipient
      #   #/components/schemas/wire_transfer/properties/message_to_recipient
      #
      #   @return [String, nil]
      required :message_to_recipient, String, nil?: true

      # @!attribute network
      #   #/components/schemas/wire_transfer/properties/network
      #
      #   @return [Symbol, Increase::Models::WireTransfer::Network]
      required :network, enum: -> { Increase::Models::WireTransfer::Network }

      # @!attribute originator_address_line1
      #   #/components/schemas/wire_transfer/properties/originator_address_line1
      #
      #   @return [String, nil]
      required :originator_address_line1, String, nil?: true

      # @!attribute originator_address_line2
      #   #/components/schemas/wire_transfer/properties/originator_address_line2
      #
      #   @return [String, nil]
      required :originator_address_line2, String, nil?: true

      # @!attribute originator_address_line3
      #   #/components/schemas/wire_transfer/properties/originator_address_line3
      #
      #   @return [String, nil]
      required :originator_address_line3, String, nil?: true

      # @!attribute originator_name
      #   #/components/schemas/wire_transfer/properties/originator_name
      #
      #   @return [String, nil]
      required :originator_name, String, nil?: true

      # @!attribute pending_transaction_id
      #   #/components/schemas/wire_transfer/properties/pending_transaction_id
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute reversal
      #   #/components/schemas/wire_transfer/properties/reversal
      #
      #   @return [Increase::Models::WireTransfer::Reversal, nil]
      required :reversal, -> { Increase::Models::WireTransfer::Reversal }, nil?: true

      # @!attribute routing_number
      #   #/components/schemas/wire_transfer/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute source_account_number_id
      #   #/components/schemas/wire_transfer/properties/source_account_number_id
      #
      #   @return [String, nil]
      required :source_account_number_id, String, nil?: true

      # @!attribute status
      #   #/components/schemas/wire_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::WireTransfer::Status]
      required :status, enum: -> { Increase::Models::WireTransfer::Status }

      # @!attribute submission
      #   #/components/schemas/wire_transfer/properties/submission
      #
      #   @return [Increase::Models::WireTransfer::Submission, nil]
      required :submission, -> { Increase::Models::WireTransfer::Submission }, nil?: true

      # @!attribute transaction_id
      #   #/components/schemas/wire_transfer/properties/transaction_id
      #
      #   @return [String, nil]
      required :transaction_id, String, nil?: true

      # @!attribute type
      #   #/components/schemas/wire_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::WireTransfer::Type]
      required :type, enum: -> { Increase::Models::WireTransfer::Type }

      # @!parse
      #   # #/components/schemas/wire_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::WireTransfer::Approval, nil]
      #   # @param beneficiary_address_line1 [String, nil]
      #   # @param beneficiary_address_line2 [String, nil]
      #   # @param beneficiary_address_line3 [String, nil]
      #   # @param beneficiary_name [String, nil]
      #   # @param cancellation [Increase::Models::WireTransfer::Cancellation, nil]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::WireTransfer::CreatedBy, nil]
      #   # @param currency [Symbol, Increase::Models::WireTransfer::Currency]
      #   # @param external_account_id [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param message_to_recipient [String, nil]
      #   # @param network [Symbol, Increase::Models::WireTransfer::Network]
      #   # @param originator_address_line1 [String, nil]
      #   # @param originator_address_line2 [String, nil]
      #   # @param originator_address_line3 [String, nil]
      #   # @param originator_name [String, nil]
      #   # @param pending_transaction_id [String, nil]
      #   # @param reversal [Increase::Models::WireTransfer::Reversal, nil]
      #   # @param routing_number [String]
      #   # @param source_account_number_id [String, nil]
      #   # @param status [Symbol, Increase::Models::WireTransfer::Status]
      #   # @param submission [Increase::Models::WireTransfer::Submission, nil]
      #   # @param transaction_id [String, nil]
      #   # @param type [Symbol, Increase::Models::WireTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     amount:,
      #     approval:,
      #     beneficiary_address_line1:,
      #     beneficiary_address_line2:,
      #     beneficiary_address_line3:,
      #     beneficiary_name:,
      #     cancellation:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     external_account_id:,
      #     idempotency_key:,
      #     message_to_recipient:,
      #     network:,
      #     originator_address_line1:,
      #     originator_address_line2:,
      #     originator_address_line3:,
      #     originator_name:,
      #     pending_transaction_id:,
      #     reversal:,
      #     routing_number:,
      #     source_account_number_id:,
      #     status:,
      #     submission:,
      #     transaction_id:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::WireTransfer#approval
      class Approval < Increase::Internal::Type::BaseModel
        # @!attribute approved_at
        #   #/components/schemas/wire_transfer/properties/approval/anyOf/0/properties/approved_at
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   #/components/schemas/wire_transfer/properties/approval/anyOf/0/properties/approved_by
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/wire_transfer/properties/approval
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::WireTransfer#cancellation
      class Cancellation < Increase::Internal::Type::BaseModel
        # @!attribute canceled_at
        #   #/components/schemas/wire_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   #/components/schemas/wire_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/wire_transfer/properties/cancellation
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::WireTransfer#created_by
      class CreatedBy < Increase::Internal::Type::BaseModel
        # @!attribute api_key
        #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key
        #
        #   @return [Increase::Models::WireTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::WireTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::WireTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::WireTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application
        #
        #   @return [Increase::Models::WireTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application,
                 -> { Increase::Models::WireTransfer::CreatedBy::OAuthApplication },
                 nil?: true

        # @!attribute user
        #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user
        #
        #   @return [Increase::Models::WireTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::WireTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # #/components/schemas/wire_transfer/properties/created_by
        #   #
        #   # @param api_key [Increase::Models::WireTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::WireTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::WireTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::WireTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::WireTransfer::CreatedBy#api_key
        class APIKey < Increase::Internal::Type::BaseModel
          # @!attribute description
          #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/api_key
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/category
        #
        # @see Increase::Models::WireTransfer::CreatedBy#category
        module Category
          extend Increase::Internal::Type::Enum

          # An API key. Details will be under the `api_key` object.
          API_KEY = :api_key

          # An OAuth application you connected to Increase. Details will be under the `oauth_application` object.
          OAUTH_APPLICATION = :oauth_application

          # A User in the Increase dashboard. Details will be under the `user` object.
          USER = :user

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::WireTransfer::CreatedBy#oauth_application
        class OAuthApplication < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/oauth_application
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::WireTransfer::CreatedBy#user
        class User < Increase::Internal::Type::BaseModel
          # @!attribute email
          #   #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # #/components/schemas/wire_transfer/properties/created_by/anyOf/0/properties/user
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/wire_transfer/properties/currency
      #
      # @see Increase::Models::WireTransfer#currency
      module Currency
        extend Increase::Internal::Type::Enum

        # Canadian Dollar (CAD)
        CAD = :CAD

        # Swiss Franc (CHF)
        CHF = :CHF

        # Euro (EUR)
        EUR = :EUR

        # British Pound (GBP)
        GBP = :GBP

        # Japanese Yen (JPY)
        JPY = :JPY

        # US Dollar (USD)
        USD = :USD

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/wire_transfer/properties/network
      #
      # @see Increase::Models::WireTransfer#network
      module Network
        extend Increase::Internal::Type::Enum

        WIRE = :wire

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::WireTransfer#reversal
      class Reversal < Increase::Internal::Type::BaseModel
        # @!attribute amount
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute description
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/description
        #
        #   @return [String]
        required :description, String

        # @!attribute financial_institution_to_financial_institution_information
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/financial_institution_to_financial_institution_information
        #
        #   @return [String, nil]
        required :financial_institution_to_financial_institution_information, String, nil?: true

        # @!attribute input_cycle_date
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_cycle_date
        #
        #   @return [Date]
        required :input_cycle_date, Date

        # @!attribute input_message_accountability_data
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_message_accountability_data
        #
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute input_sequence_number
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_sequence_number
        #
        #   @return [String]
        required :input_sequence_number, String

        # @!attribute input_source
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/input_source
        #
        #   @return [String]
        required :input_source, String

        # @!attribute originator_routing_number
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/originator_routing_number
        #
        #   @return [String, nil]
        required :originator_routing_number, String, nil?: true

        # @!attribute previous_message_input_cycle_date
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_cycle_date
        #
        #   @return [Date]
        required :previous_message_input_cycle_date, Date

        # @!attribute previous_message_input_message_accountability_data
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_message_accountability_data
        #
        #   @return [String]
        required :previous_message_input_message_accountability_data, String

        # @!attribute previous_message_input_sequence_number
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_sequence_number
        #
        #   @return [String]
        required :previous_message_input_sequence_number, String

        # @!attribute previous_message_input_source
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/previous_message_input_source
        #
        #   @return [String]
        required :previous_message_input_source, String

        # @!attribute receiver_financial_institution_information
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/receiver_financial_institution_information
        #
        #   @return [String, nil]
        required :receiver_financial_institution_information, String, nil?: true

        # @!attribute sender_reference
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/sender_reference
        #
        #   @return [String, nil]
        required :sender_reference, String, nil?: true

        # @!attribute transaction_id
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/transaction_id
        #
        #   @return [String]
        required :transaction_id, String

        # @!attribute wire_transfer_id
        #   #/components/schemas/wire_transfer/properties/reversal/anyOf/0/properties/wire_transfer_id
        #
        #   @return [String]
        required :wire_transfer_id, String

        # @!parse
        #   # #/components/schemas/wire_transfer/properties/reversal
        #   #
        #   # @param amount [Integer]
        #   # @param created_at [Time]
        #   # @param description [String]
        #   # @param financial_institution_to_financial_institution_information [String, nil]
        #   # @param input_cycle_date [Date]
        #   # @param input_message_accountability_data [String]
        #   # @param input_sequence_number [String]
        #   # @param input_source [String]
        #   # @param originator_routing_number [String, nil]
        #   # @param previous_message_input_cycle_date [Date]
        #   # @param previous_message_input_message_accountability_data [String]
        #   # @param previous_message_input_sequence_number [String]
        #   # @param previous_message_input_source [String]
        #   # @param receiver_financial_institution_information [String, nil]
        #   # @param sender_reference [String, nil]
        #   # @param transaction_id [String]
        #   # @param wire_transfer_id [String]
        #   #
        #   def initialize(
        #     amount:,
        #     created_at:,
        #     description:,
        #     financial_institution_to_financial_institution_information:,
        #     input_cycle_date:,
        #     input_message_accountability_data:,
        #     input_sequence_number:,
        #     input_source:,
        #     originator_routing_number:,
        #     previous_message_input_cycle_date:,
        #     previous_message_input_message_accountability_data:,
        #     previous_message_input_sequence_number:,
        #     previous_message_input_source:,
        #     receiver_financial_institution_information:,
        #     sender_reference:,
        #     transaction_id:,
        #     wire_transfer_id:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/wire_transfer/properties/status
      #
      # @see Increase::Models::WireTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The transfer is pending approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending review by Increase.
        PENDING_REVIEWING = :pending_reviewing

        # The transfer has been rejected by Increase.
        REJECTED = :rejected

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer is pending creation.
        PENDING_CREATING = :pending_creating

        # The transfer has been reversed.
        REVERSED = :reversed

        # The transfer has been submitted to Fedwire.
        SUBMITTED = :submitted

        # The transfer has been acknowledged by Fedwire and can be considered complete.
        COMPLETE = :complete

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::WireTransfer#submission
      class Submission < Increase::Internal::Type::BaseModel
        # @!attribute input_message_accountability_data
        #   #/components/schemas/wire_transfer/properties/submission/anyOf/0/properties/input_message_accountability_data
        #
        #   @return [String]
        required :input_message_accountability_data, String

        # @!attribute submitted_at
        #   #/components/schemas/wire_transfer/properties/submission/anyOf/0/properties/submitted_at
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # #/components/schemas/wire_transfer/properties/submission
        #   #
        #   # @param input_message_accountability_data [String]
        #   # @param submitted_at [Time]
        #   #
        #   def initialize(input_message_accountability_data:, submitted_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/wire_transfer/properties/type
      #
      # @see Increase::Models::WireTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        WIRE_TRANSFER = :wire_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
