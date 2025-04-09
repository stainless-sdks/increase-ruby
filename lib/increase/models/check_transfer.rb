# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CheckTransfers#create
    class CheckTransfer < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/check_transfer/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/check_transfer/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute account_number
      #   #/components/schemas/check_transfer/properties/account_number
      #
      #   @return [String]
      required :account_number, String

      # @!attribute amount
      #   #/components/schemas/check_transfer/properties/amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute approval
      #   #/components/schemas/check_transfer/properties/approval
      #
      #   @return [Increase::Models::CheckTransfer::Approval, nil]
      required :approval, -> { Increase::Models::CheckTransfer::Approval }, nil?: true

      # @!attribute approved_inbound_check_deposit_id
      #   #/components/schemas/check_transfer/properties/approved_inbound_check_deposit_id
      #
      #   @return [String, nil]
      required :approved_inbound_check_deposit_id, String, nil?: true

      # @!attribute cancellation
      #   #/components/schemas/check_transfer/properties/cancellation
      #
      #   @return [Increase::Models::CheckTransfer::Cancellation, nil]
      required :cancellation, -> { Increase::Models::CheckTransfer::Cancellation }, nil?: true

      # @!attribute check_number
      #   #/components/schemas/check_transfer/properties/check_number
      #
      #   @return [String]
      required :check_number, String

      # @!attribute created_at
      #   #/components/schemas/check_transfer/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #   #/components/schemas/check_transfer/properties/created_by
      #
      #   @return [Increase::Models::CheckTransfer::CreatedBy, nil]
      required :created_by, -> { Increase::Models::CheckTransfer::CreatedBy }, nil?: true

      # @!attribute currency
      #   #/components/schemas/check_transfer/properties/currency
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Currency]
      required :currency, enum: -> { Increase::Models::CheckTransfer::Currency }

      # @!attribute fulfillment_method
      #   #/components/schemas/check_transfer/properties/fulfillment_method
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::FulfillmentMethod]
      required :fulfillment_method, enum: -> { Increase::Models::CheckTransfer::FulfillmentMethod }

      # @!attribute idempotency_key
      #   #/components/schemas/check_transfer/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute mailing
      #   #/components/schemas/check_transfer/properties/mailing
      #
      #   @return [Increase::Models::CheckTransfer::Mailing, nil]
      required :mailing, -> { Increase::Models::CheckTransfer::Mailing }, nil?: true

      # @!attribute pending_transaction_id
      #   #/components/schemas/check_transfer/properties/pending_transaction_id
      #
      #   @return [String, nil]
      required :pending_transaction_id, String, nil?: true

      # @!attribute physical_check
      #   #/components/schemas/check_transfer/properties/physical_check
      #
      #   @return [Increase::Models::CheckTransfer::PhysicalCheck, nil]
      required :physical_check, -> { Increase::Models::CheckTransfer::PhysicalCheck }, nil?: true

      # @!attribute routing_number
      #   #/components/schemas/check_transfer/properties/routing_number
      #
      #   @return [String]
      required :routing_number, String

      # @!attribute source_account_number_id
      #   #/components/schemas/check_transfer/properties/source_account_number_id
      #
      #   @return [String, nil]
      required :source_account_number_id, String, nil?: true

      # @!attribute status
      #   #/components/schemas/check_transfer/properties/status
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Status]
      required :status, enum: -> { Increase::Models::CheckTransfer::Status }

      # @!attribute stop_payment_request
      #   #/components/schemas/check_transfer/properties/stop_payment_request
      #
      #   @return [Increase::Models::CheckTransfer::StopPaymentRequest, nil]
      required :stop_payment_request, -> { Increase::Models::CheckTransfer::StopPaymentRequest }, nil?: true

      # @!attribute submission
      #   #/components/schemas/check_transfer/properties/submission
      #
      #   @return [Increase::Models::CheckTransfer::Submission, nil]
      required :submission, -> { Increase::Models::CheckTransfer::Submission }, nil?: true

      # @!attribute third_party
      #   #/components/schemas/check_transfer/properties/third_party
      #
      #   @return [Increase::Models::CheckTransfer::ThirdParty, nil]
      required :third_party, -> { Increase::Models::CheckTransfer::ThirdParty }, nil?: true

      # @!attribute type
      #   #/components/schemas/check_transfer/properties/type
      #
      #   @return [Symbol, Increase::Models::CheckTransfer::Type]
      required :type, enum: -> { Increase::Models::CheckTransfer::Type }

      # @!parse
      #   # #/components/schemas/check_transfer
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param account_number [String]
      #   # @param amount [Integer]
      #   # @param approval [Increase::Models::CheckTransfer::Approval, nil]
      #   # @param approved_inbound_check_deposit_id [String, nil]
      #   # @param cancellation [Increase::Models::CheckTransfer::Cancellation, nil]
      #   # @param check_number [String]
      #   # @param created_at [Time]
      #   # @param created_by [Increase::Models::CheckTransfer::CreatedBy, nil]
      #   # @param currency [Symbol, Increase::Models::CheckTransfer::Currency]
      #   # @param fulfillment_method [Symbol, Increase::Models::CheckTransfer::FulfillmentMethod]
      #   # @param idempotency_key [String, nil]
      #   # @param mailing [Increase::Models::CheckTransfer::Mailing, nil]
      #   # @param pending_transaction_id [String, nil]
      #   # @param physical_check [Increase::Models::CheckTransfer::PhysicalCheck, nil]
      #   # @param routing_number [String]
      #   # @param source_account_number_id [String, nil]
      #   # @param status [Symbol, Increase::Models::CheckTransfer::Status]
      #   # @param stop_payment_request [Increase::Models::CheckTransfer::StopPaymentRequest, nil]
      #   # @param submission [Increase::Models::CheckTransfer::Submission, nil]
      #   # @param third_party [Increase::Models::CheckTransfer::ThirdParty, nil]
      #   # @param type [Symbol, Increase::Models::CheckTransfer::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     account_number:,
      #     amount:,
      #     approval:,
      #     approved_inbound_check_deposit_id:,
      #     cancellation:,
      #     check_number:,
      #     created_at:,
      #     created_by:,
      #     currency:,
      #     fulfillment_method:,
      #     idempotency_key:,
      #     mailing:,
      #     pending_transaction_id:,
      #     physical_check:,
      #     routing_number:,
      #     source_account_number_id:,
      #     status:,
      #     stop_payment_request:,
      #     submission:,
      #     third_party:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::CheckTransfer#approval
      class Approval < Increase::Internal::Type::BaseModel
        # @!attribute approved_at
        #   #/components/schemas/check_transfer/properties/approval/anyOf/0/properties/approved_at
        #
        #   @return [Time]
        required :approved_at, Time

        # @!attribute approved_by
        #   #/components/schemas/check_transfer/properties/approval/anyOf/0/properties/approved_by
        #
        #   @return [String, nil]
        required :approved_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/check_transfer/properties/approval
        #   #
        #   # @param approved_at [Time]
        #   # @param approved_by [String, nil]
        #   #
        #   def initialize(approved_at:, approved_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CheckTransfer#cancellation
      class Cancellation < Increase::Internal::Type::BaseModel
        # @!attribute canceled_at
        #   #/components/schemas/check_transfer/properties/cancellation/anyOf/0/properties/canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute canceled_by
        #   #/components/schemas/check_transfer/properties/cancellation/anyOf/0/properties/canceled_by
        #
        #   @return [String, nil]
        required :canceled_by, String, nil?: true

        # @!parse
        #   # #/components/schemas/check_transfer/properties/cancellation
        #   #
        #   # @param canceled_at [Time]
        #   # @param canceled_by [String, nil]
        #   #
        #   def initialize(canceled_at:, canceled_by:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CheckTransfer#created_by
      class CreatedBy < Increase::Internal::Type::BaseModel
        # @!attribute api_key
        #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/api_key
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::APIKey, nil]
        required :api_key, -> { Increase::Models::CheckTransfer::CreatedBy::APIKey }, nil?: true

        # @!attribute category
        #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/category
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::CreatedBy::Category]
        required :category, enum: -> { Increase::Models::CheckTransfer::CreatedBy::Category }

        # @!attribute oauth_application
        #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/oauth_application
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, nil]
        required :oauth_application,
                 -> { Increase::Models::CheckTransfer::CreatedBy::OAuthApplication },
                 nil?: true

        # @!attribute user
        #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/user
        #
        #   @return [Increase::Models::CheckTransfer::CreatedBy::User, nil]
        required :user, -> { Increase::Models::CheckTransfer::CreatedBy::User }, nil?: true

        # @!parse
        #   # #/components/schemas/check_transfer/properties/created_by
        #   #
        #   # @param api_key [Increase::Models::CheckTransfer::CreatedBy::APIKey, nil]
        #   # @param category [Symbol, Increase::Models::CheckTransfer::CreatedBy::Category]
        #   # @param oauth_application [Increase::Models::CheckTransfer::CreatedBy::OAuthApplication, nil]
        #   # @param user [Increase::Models::CheckTransfer::CreatedBy::User, nil]
        #   #
        #   def initialize(api_key:, category:, oauth_application:, user:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::CheckTransfer::CreatedBy#api_key
        class APIKey < Increase::Internal::Type::BaseModel
          # @!attribute description
          #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/api_key/anyOf/0/properties/description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!parse
          #   # #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/api_key
          #   #
          #   # @param description [String, nil]
          #   #
          #   def initialize(description:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/category
        #
        # @see Increase::Models::CheckTransfer::CreatedBy#category
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

        # @see Increase::Models::CheckTransfer::CreatedBy#oauth_application
        class OAuthApplication < Increase::Internal::Type::BaseModel
          # @!attribute name
          #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/oauth_application/anyOf/0/properties/name
          #
          #   @return [String]
          required :name, String

          # @!parse
          #   # #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/oauth_application
          #   #
          #   # @param name [String]
          #   #
          #   def initialize(name:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::CheckTransfer::CreatedBy#user
        class User < Increase::Internal::Type::BaseModel
          # @!attribute email
          #   #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/user/anyOf/0/properties/email
          #
          #   @return [String]
          required :email, String

          # @!parse
          #   # #/components/schemas/check_transfer/properties/created_by/anyOf/0/properties/user
          #   #
          #   # @param email [String]
          #   #
          #   def initialize(email:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # #/components/schemas/check_transfer/properties/currency
      #
      # @see Increase::Models::CheckTransfer#currency
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

      # #/components/schemas/check_transfer/properties/fulfillment_method
      #
      # @see Increase::Models::CheckTransfer#fulfillment_method
      module FulfillmentMethod
        extend Increase::Internal::Type::Enum

        # Increase will print and mail a physical check.
        PHYSICAL_CHECK = :physical_check

        # Increase will not print a check; you are responsible for printing and mailing a check with the provided account number, routing number, check number, and amount.
        THIRD_PARTY = :third_party

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::CheckTransfer#mailing
      class Mailing < Increase::Internal::Type::BaseModel
        # @!attribute image_id
        #   #/components/schemas/check_transfer/properties/mailing/anyOf/0/properties/image_id
        #
        #   @return [String, nil]
        required :image_id, String, nil?: true

        # @!attribute mailed_at
        #   #/components/schemas/check_transfer/properties/mailing/anyOf/0/properties/mailed_at
        #
        #   @return [Time]
        required :mailed_at, Time

        # @!attribute tracking_number
        #   #/components/schemas/check_transfer/properties/mailing/anyOf/0/properties/tracking_number
        #
        #   @return [String, nil]
        required :tracking_number, String, nil?: true

        # @!parse
        #   # #/components/schemas/check_transfer/properties/mailing
        #   #
        #   # @param image_id [String, nil]
        #   # @param mailed_at [Time]
        #   # @param tracking_number [String, nil]
        #   #
        #   def initialize(image_id:, mailed_at:, tracking_number:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # @see Increase::Models::CheckTransfer#physical_check
      class PhysicalCheck < Increase::Internal::Type::BaseModel
        # @!attribute mailing_address
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address
        #
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress]
        required :mailing_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress }

        # @!attribute memo
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/memo
        #
        #   @return [String, nil]
        required :memo, String, nil?: true

        # @!attribute note
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/note
        #
        #   @return [String, nil]
        required :note, String, nil?: true

        # @!attribute recipient_name
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/recipient_name
        #
        #   @return [String]
        required :recipient_name, String

        # @!attribute return_address
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address
        #
        #   @return [Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, nil]
        required :return_address, -> { Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress }, nil?: true

        # @!attribute shipping_method
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/shipping_method
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod, nil]
        required :shipping_method,
                 enum: -> { Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod },
                 nil?: true

        # @!attribute signature_text
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/signature_text
        #
        #   @return [String, nil]
        required :signature_text, String, nil?: true

        # @!attribute tracking_updates
        #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates
        #
        #   @return [Array<Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate>]
        required :tracking_updates,
                 -> { Increase::Internal::Type::ArrayOf[Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate] }

        # @!parse
        #   # #/components/schemas/check_transfer/properties/physical_check
        #   #
        #   # @param mailing_address [Increase::Models::CheckTransfer::PhysicalCheck::MailingAddress]
        #   # @param memo [String, nil]
        #   # @param note [String, nil]
        #   # @param recipient_name [String]
        #   # @param return_address [Increase::Models::CheckTransfer::PhysicalCheck::ReturnAddress, nil]
        #   # @param shipping_method [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::ShippingMethod, nil]
        #   # @param signature_text [String, nil]
        #   # @param tracking_updates [Array<Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate>]
        #   #
        #   def initialize(
        #     mailing_address:,
        #     memo:,
        #     note:,
        #     recipient_name:,
        #     return_address:,
        #     shipping_method:,
        #     signature_text:,
        #     tracking_updates:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # @see Increase::Models::CheckTransfer::PhysicalCheck#mailing_address
        class MailingAddress < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/city
          #
          #   @return [String, nil]
          required :city, String, nil?: true

          # @!attribute line1
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/line1
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute line2
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute name
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/name
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute postal_code
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/postal_code
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute state
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address/properties/state
          #
          #   @return [String, nil]
          required :state, String, nil?: true

          # @!parse
          #   # #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/mailing_address
          #   #
          #   # @param city [String, nil]
          #   # @param line1 [String, nil]
          #   # @param line2 [String, nil]
          #   # @param name [String, nil]
          #   # @param postal_code [String, nil]
          #   # @param state [String, nil]
          #   #
          #   def initialize(city:, line1:, line2:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # @see Increase::Models::CheckTransfer::PhysicalCheck#return_address
        class ReturnAddress < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/city
          #
          #   @return [String, nil]
          required :city, String, nil?: true

          # @!attribute line1
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/line1
          #
          #   @return [String, nil]
          required :line1, String, nil?: true

          # @!attribute line2
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute name
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/name
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute postal_code
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/postal_code
          #
          #   @return [String, nil]
          required :postal_code, String, nil?: true

          # @!attribute state
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address/anyOf/0/properties/state
          #
          #   @return [String, nil]
          required :state, String, nil?: true

          # @!parse
          #   # #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/return_address
          #   #
          #   # @param city [String, nil]
          #   # @param line1 [String, nil]
          #   # @param line2 [String, nil]
          #   # @param name [String, nil]
          #   # @param postal_code [String, nil]
          #   # @param state [String, nil]
          #   #
          #   def initialize(city:, line1:, line2:, name:, postal_code:, state:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end

        # #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/shipping_method
        #
        # @see Increase::Models::CheckTransfer::PhysicalCheck#shipping_method
        module ShippingMethod
          extend Increase::Internal::Type::Enum

          # USPS First Class
          USPS_FIRST_CLASS = :usps_first_class

          # FedEx Overnight
          FEDEX_OVERNIGHT = :fedex_overnight

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        class TrackingUpdate < Increase::Internal::Type::BaseModel
          # @!attribute category
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates/items/properties/category
          #
          #   @return [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category]
          required :category, enum: -> { Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category }

          # @!attribute created_at
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates/items/properties/created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute postal_code
          #   #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates/items/properties/postal_code
          #
          #   @return [String]
          required :postal_code, String

          # @!parse
          #   # #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates/items
          #   #
          #   # @param category [Symbol, Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate::Category]
          #   # @param created_at [Time]
          #   # @param postal_code [String]
          #   #
          #   def initialize(category:, created_at:, postal_code:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

          # #/components/schemas/check_transfer/properties/physical_check/anyOf/0/properties/tracking_updates/items/properties/category
          #
          # @see Increase::Models::CheckTransfer::PhysicalCheck::TrackingUpdate#category
          module Category
            extend Increase::Internal::Type::Enum

            # The check is in transit.
            IN_TRANSIT = :in_transit

            # The check has been processed for delivery.
            PROCESSED_FOR_DELIVERY = :processed_for_delivery

            # The check has been delivered.
            DELIVERED = :delivered

            # Delivery failed and the check was returned to sender.
            RETURNED_TO_SENDER = :returned_to_sender

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end

      # #/components/schemas/check_transfer/properties/status
      #
      # @see Increase::Models::CheckTransfer#status
      module Status
        extend Increase::Internal::Type::Enum

        # The transfer is awaiting approval.
        PENDING_APPROVAL = :pending_approval

        # The transfer has been canceled.
        CANCELED = :canceled

        # The transfer is pending submission.
        PENDING_SUBMISSION = :pending_submission

        # The transfer requires attention from an Increase operator.
        REQUIRES_ATTENTION = :requires_attention

        # The transfer has been rejected.
        REJECTED = :rejected

        # The check is queued for mailing.
        PENDING_MAILING = :pending_mailing

        # The check has been mailed.
        MAILED = :mailed

        # The check has been deposited.
        DEPOSITED = :deposited

        # A stop-payment was requested for this check.
        STOPPED = :stopped

        # The transfer has been returned.
        RETURNED = :returned

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # @see Increase::Models::CheckTransfer#stop_payment_request
      class StopPaymentRequest < Increase::Internal::Type::BaseModel
        # @!attribute reason
        #   #/components/schemas/check_transfer_stop_payment_request/properties/reason
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason]
        required :reason, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Reason }

        # @!attribute requested_at
        #   #/components/schemas/check_transfer_stop_payment_request/properties/requested_at
        #
        #   @return [Time]
        required :requested_at, Time

        # @!attribute transfer_id
        #   #/components/schemas/check_transfer_stop_payment_request/properties/transfer_id
        #
        #   @return [String]
        required :transfer_id, String

        # @!attribute type
        #   #/components/schemas/check_transfer_stop_payment_request/properties/type
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type]
        required :type, enum: -> { Increase::Models::CheckTransfer::StopPaymentRequest::Type }

        # @!parse
        #   # #/components/schemas/check_transfer/properties/stop_payment_request
        #   #
        #   # @param reason [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Reason]
        #   # @param requested_at [Time]
        #   # @param transfer_id [String]
        #   # @param type [Symbol, Increase::Models::CheckTransfer::StopPaymentRequest::Type]
        #   #
        #   def initialize(reason:, requested_at:, transfer_id:, type:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/check_transfer_stop_payment_request/properties/reason
        #
        # @see Increase::Models::CheckTransfer::StopPaymentRequest#reason
        module Reason
          extend Increase::Internal::Type::Enum

          # The check could not be delivered.
          MAIL_DELIVERY_FAILED = :mail_delivery_failed

          # The check was canceled by an Increase operator who will provide details out-of-band.
          REJECTED_BY_INCREASE = :rejected_by_increase

          # The check was not authorized.
          NOT_AUTHORIZED = :not_authorized

          # The check was stopped for another reason.
          UNKNOWN = :unknown

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/check_transfer_stop_payment_request/properties/type
        #
        # @see Increase::Models::CheckTransfer::StopPaymentRequest#type
        module Type
          extend Increase::Internal::Type::Enum

          CHECK_TRANSFER_STOP_PAYMENT_REQUEST = :check_transfer_stop_payment_request

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # @see Increase::Models::CheckTransfer#submission
      class Submission < Increase::Internal::Type::BaseModel
        # @!attribute address_correction_action
        #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/address_correction_action
        #
        #   @return [Symbol, Increase::Models::CheckTransfer::Submission::AddressCorrectionAction]
        required :address_correction_action,
                 enum: -> { Increase::Models::CheckTransfer::Submission::AddressCorrectionAction }

        # @!attribute submitted_address
        #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address
        #
        #   @return [Increase::Models::CheckTransfer::Submission::SubmittedAddress]
        required :submitted_address, -> { Increase::Models::CheckTransfer::Submission::SubmittedAddress }

        # @!attribute submitted_at
        #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_at
        #
        #   @return [Time]
        required :submitted_at, Time

        # @!parse
        #   # #/components/schemas/check_transfer/properties/submission
        #   #
        #   # @param address_correction_action [Symbol, Increase::Models::CheckTransfer::Submission::AddressCorrectionAction]
        #   # @param submitted_address [Increase::Models::CheckTransfer::Submission::SubmittedAddress]
        #   # @param submitted_at [Time]
        #   #
        #   def initialize(address_correction_action:, submitted_address:, submitted_at:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/address_correction_action
        #
        # @see Increase::Models::CheckTransfer::Submission#address_correction_action
        module AddressCorrectionAction
          extend Increase::Internal::Type::Enum

          # No address correction took place.
          NONE = :none

          # The address was standardized.
          STANDARDIZATION = :standardization

          # The address was first standardized and then changed because the recipient moved.
          STANDARDIZATION_WITH_ADDRESS_CHANGE = :standardization_with_address_change

          # An error occurred while correcting the address. This typically means the USPS could not find that address. The address was not changed.
          ERROR = :error

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see Increase::Models::CheckTransfer::Submission#submitted_address
        class SubmittedAddress < Increase::Internal::Type::BaseModel
          # @!attribute city
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/city
          #
          #   @return [String]
          required :city, String

          # @!attribute line1
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/line1
          #
          #   @return [String]
          required :line1, String

          # @!attribute line2
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/line2
          #
          #   @return [String, nil]
          required :line2, String, nil?: true

          # @!attribute recipient_name
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/recipient_name
          #
          #   @return [String]
          required :recipient_name, String

          # @!attribute state
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/state
          #
          #   @return [String]
          required :state, String

          # @!attribute zip
          #   #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address/properties/zip
          #
          #   @return [String]
          required :zip, String

          # @!parse
          #   # #/components/schemas/check_transfer/properties/submission/anyOf/0/properties/submitted_address
          #   #
          #   # @param city [String]
          #   # @param line1 [String]
          #   # @param line2 [String, nil]
          #   # @param recipient_name [String]
          #   # @param state [String]
          #   # @param zip [String]
          #   #
          #   def initialize(city:, line1:, line2:, recipient_name:, state:, zip:, **) = super

          # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
        end
      end

      # @see Increase::Models::CheckTransfer#third_party
      class ThirdParty < Increase::Internal::Type::BaseModel
        # @!attribute check_number
        #   #/components/schemas/check_transfer/properties/third_party/anyOf/0/properties/check_number
        #
        #   @return [String, nil]
        required :check_number, String, nil?: true

        # @!attribute recipient_name
        #   #/components/schemas/check_transfer/properties/third_party/anyOf/0/properties/recipient_name
        #
        #   @return [String, nil]
        required :recipient_name, String, nil?: true

        # @!parse
        #   # #/components/schemas/check_transfer/properties/third_party
        #   #
        #   # @param check_number [String, nil]
        #   # @param recipient_name [String, nil]
        #   #
        #   def initialize(check_number:, recipient_name:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/check_transfer/properties/type
      #
      # @see Increase::Models::CheckTransfer#type
      module Type
        extend Increase::Internal::Type::Enum

        CHECK_TRANSFER = :check_transfer

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
