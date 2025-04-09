# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::IntrafiAccountEnrollments#create
    class IntrafiAccountEnrollment < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/intrafi_account_enrollment/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/intrafi_account_enrollment/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute created_at
      #   #/components/schemas/intrafi_account_enrollment/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute idempotency_key
      #   #/components/schemas/intrafi_account_enrollment/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute intrafi_id
      #   #/components/schemas/intrafi_account_enrollment/properties/intrafi_id
      #
      #   @return [String]
      required :intrafi_id, String

      # @!attribute status
      #   #/components/schemas/intrafi_account_enrollment/properties/status
      #
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Status]
      required :status, enum: -> { Increase::Models::IntrafiAccountEnrollment::Status }

      # @!attribute type
      #   #/components/schemas/intrafi_account_enrollment/properties/type
      #
      #   @return [Symbol, Increase::Models::IntrafiAccountEnrollment::Type]
      required :type, enum: -> { Increase::Models::IntrafiAccountEnrollment::Type }

      # @!parse
      #   # #/components/schemas/intrafi_account_enrollment
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param created_at [Time]
      #   # @param idempotency_key [String, nil]
      #   # @param intrafi_id [String]
      #   # @param status [Symbol, Increase::Models::IntrafiAccountEnrollment::Status]
      #   # @param type [Symbol, Increase::Models::IntrafiAccountEnrollment::Type]
      #   #
      #   def initialize(id:, account_id:, created_at:, idempotency_key:, intrafi_id:, status:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # #/components/schemas/intrafi_account_enrollment/properties/status
      #
      # @see Increase::Models::IntrafiAccountEnrollment#status
      module Status
        extend Increase::Internal::Type::Enum

        # The account is being added to the IntraFi network.
        PENDING_ENROLLING = :pending_enrolling

        # The account has been enrolled with IntraFi.
        ENROLLED = :enrolled

        # The account is being unenrolled from IntraFi's deposit sweep.
        PENDING_UNENROLLING = :pending_unenrolling

        # The account was once enrolled, but is no longer enrolled at IntraFi.
        UNENROLLED = :unenrolled

        # Something unexpected happened with this account. Contact Increase support.
        REQUIRES_ATTENTION = :requires_attention

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/intrafi_account_enrollment/properties/type
      #
      # @see Increase::Models::IntrafiAccountEnrollment#type
      module Type
        extend Increase::Internal::Type::Enum

        INTRAFI_ACCOUNT_ENROLLMENT = :intrafi_account_enrollment

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
