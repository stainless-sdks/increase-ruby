# typed: strong

module Increase
  module Resources
    class IntrafiAccountEnrollments
      # Enroll an account in the IntraFi deposit sweep network
      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def create(
        # #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/account_id
        account_id:,
        # #/components/schemas/enroll_an_account_in_the_intrafi_deposit_sweep_network_parameters/properties/email_address
        email_address:,
        request_options: {}
      ); end
      # Get an IntraFi Account Enrollment
      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def retrieve(
        # #/paths//intrafi_account_enrollments/{intrafi_account_enrollment_id}/get/parameters/0/schema
        intrafi_account_enrollment_id,
        request_options: {}
      ); end
      # List IntraFi Account Enrollments
      sig do
        params(
          account_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: T.any(Increase::Models::IntrafiAccountEnrollmentListParams::Status, Increase::Internal::AnyHash),
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Internal::Page[Increase::Models::IntrafiAccountEnrollment])
      end
      def list(
        # #/paths//intrafi_account_enrollments/get/parameters/2/schema
        account_id: nil,
        # #/paths//intrafi_account_enrollments/get/parameters/0/schema
        cursor: nil,
        # #/paths//intrafi_account_enrollments/get/parameters/4/schema
        idempotency_key: nil,
        # #/paths//intrafi_account_enrollments/get/parameters/1/schema
        limit: nil,
        status: nil,
        request_options: {}
      ); end
      # Unenroll an account from IntraFi
      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, Increase::Internal::AnyHash))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def unenroll(
        # #/paths//intrafi_account_enrollments/{intrafi_account_enrollment_id}/unenroll/post/parameters/0/schema
        intrafi_account_enrollment_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
