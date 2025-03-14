# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollmentListParams < Increase::BaseModel
      # @!parse
      #   extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # @!attribute [r] account_id
      #   Filter IntraFi Account Enrollments to the one belonging to an account.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :account_id

      # @!attribute [r] cursor
      #   Return the page of entries after this one.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!parse
      #   # @return [String]
      #   attr_writer :cursor

      # @!attribute [r] idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :idempotency_key

      # @!attribute [r] limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #
      #   @return [Increase::Models::IntrafiAccountEnrollmentListParams::Status, nil]
      optional :status, -> { Increase::Models::IntrafiAccountEnrollmentListParams::Status }

      # @!parse
      #   # @return [Increase::Models::IntrafiAccountEnrollmentListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param account_id [String]
      #   # @param cursor [String]
      #   # @param idempotency_key [String]
      #   # @param limit [Integer]
      #   # @param status [Increase::Models::IntrafiAccountEnrollmentListParams::Status]
      #   # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(account_id: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {}, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      class Status < Increase::BaseModel
        # @!attribute [r] in_
        #   Filter IntraFi Account Enrollments for those with the specified status or
        #     statuses. For GET requests, this should be encoded as a comma-delimited string,
        #     such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In>, nil]
        optional :in_,
                 -> { Increase::ArrayOf[enum: Increase::Models::IntrafiAccountEnrollmentListParams::Status::In] },
                 api_name: :in

        # @!parse
        #   # @return [Array<Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In>]
        #   attr_writer :in_

        # @!parse
        #   # @param in_ [Array<Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In>]
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @abstract
        class In < Increase::Enum
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
        end
      end
    end
  end
end
