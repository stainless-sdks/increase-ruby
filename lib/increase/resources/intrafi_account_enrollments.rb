# frozen_string_literal: true

module Increase
  module Resources
    class IntrafiAccountEnrollments
      # Enroll an account in the IntraFi deposit sweep network
      #
      # @overload create(account_id:, email_address:, request_options: {})
      #
      # @param account_id [String]
      # @param email_address [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiAccountEnrollment]
      #
      # @see Increase::Models::IntrafiAccountEnrollmentCreateParams
      def create(params)
        parsed, options = Increase::Models::IntrafiAccountEnrollmentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "intrafi_account_enrollments",
          body: parsed,
          model: Increase::Models::IntrafiAccountEnrollment,
          options: options
        )
      end

      # Get an IntraFi Account Enrollment
      #
      # @overload retrieve(intrafi_account_enrollment_id, request_options: {})
      #
      # @param intrafi_account_enrollment_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiAccountEnrollment]
      #
      # @see Increase::Models::IntrafiAccountEnrollmentRetrieveParams
      def retrieve(intrafi_account_enrollment_id, params = {})
        @client.request(
          method: :get,
          path: ["intrafi_account_enrollments/%1$s", intrafi_account_enrollment_id],
          model: Increase::Models::IntrafiAccountEnrollment,
          options: params[:request_options]
        )
      end

      # List IntraFi Account Enrollments
      #
      # @overload list(account_id: nil, cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param account_id [String]
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::IntrafiAccountEnrollmentListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::IntrafiAccountEnrollment>]
      #
      # @see Increase::Models::IntrafiAccountEnrollmentListParams
      def list(params = {})
        parsed, options = Increase::Models::IntrafiAccountEnrollmentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "intrafi_account_enrollments",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::IntrafiAccountEnrollment,
          options: options
        )
      end

      # Unenroll an account from IntraFi
      #
      # @overload unenroll(intrafi_account_enrollment_id, request_options: {})
      #
      # @param intrafi_account_enrollment_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Models::IntrafiAccountEnrollment]
      #
      # @see Increase::Models::IntrafiAccountEnrollmentUnenrollParams
      def unenroll(intrafi_account_enrollment_id, params = {})
        @client.request(
          method: :post,
          path: ["intrafi_account_enrollments/%1$s/unenroll", intrafi_account_enrollment_id],
          model: Increase::Models::IntrafiAccountEnrollment,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Increase::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
