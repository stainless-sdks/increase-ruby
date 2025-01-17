# frozen_string_literal: true

module Increase
  module Models
    class IntrafiAccountEnrollmentListParams < Increase::BaseModel
      # @!attribute account_id
      #   Filter IntraFi Account Enrollments to the one belonging to an account.
      #
      #   @return [String]
      optional :account_id, String

      # @!attribute cursor
      #   Return the page of entries after this one.
      #
      #   @return [String]
      optional :cursor, String

      # @!attribute idempotency_key
      #   Filter records to the one with the specified `idempotency_key` you chose for that object. This value is unique across Increase and is used to ensure that a request is only processed once. Learn more about [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @return [String]
      optional :idempotency_key, String

      # @!attribute limit
      #   Limit the size of the list that is returned. The default (and maximum) is 100 objects.
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute status
      #
      #   @return [Increase::Models::IntrafiAccountEnrollmentListParams::Status]
      optional :status, -> { Increase::Models::IntrafiAccountEnrollmentListParams::Status }

      # @!parse
      #   # @param account_id [String] Filter IntraFi Account Enrollments to the one belonging to an account.
      #   #
      #   # @param cursor [String] Return the page of entries after this one.
      #   #
      #   # @param idempotency_key [String] Filter records to the one with the specified `idempotency_key` you chose for
      #   #   that object. This value is unique across Increase and is used to ensure that a
      #   #   request is only processed once. Learn more about
      #   #   [idempotency](https://increase.com/documentation/idempotency-keys).
      #   #
      #   # @param limit [Integer] Limit the size of the list that is returned. The default (and maximum) is 100
      #   #   objects.
      #   #
      #   # @param status [Increase::Models::IntrafiAccountEnrollmentListParams::Status]
      #   #
      #   def initialize(account_id: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # status => {
      #   in_: -> { Increase::ArrayOf[enum: Increase::Models::IntrafiAccountEnrollmentListParams::Status::In] === _1 }
      # }
      # ```
      class Status < Increase::BaseModel
        # @!attribute in_
        #   Filter IntraFi Account Enrollments for those with the specified status or statuses. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #
        #   @return [Array<Symbol, Increase::Models::IntrafiAccountEnrollmentListParams::Status::In>]
        optional :in_,
                 -> {
                   Increase::ArrayOf[enum: Increase::Models::IntrafiAccountEnrollmentListParams::Status::In]
                 },
                 api_name: :in

        # @!parse
        #   # @param in_ [Array<String>] Filter IntraFi Account Enrollments for those with the specified status or
        #   #   statuses. For GET requests, this should be encoded as a comma-delimited string,
        #   #   such as `?in=one,two,three`.
        #   #
        #   def initialize(in_: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        # ```ruby
        # case in
        # in :pending_enrolling
        #   # ...
        # in :enrolled
        #   # ...
        # in :pending_unenrolling
        #   # ...
        # in :unenrolled
        #   # ...
        # in :requires_attention
        #   # ...
        # end
        # ```
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
