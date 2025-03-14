# typed: strong

module Increase
  module Resources
    class IntrafiAccountEnrollments
      # Enroll an account in the IntraFi deposit sweep network
      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def create(account_id:, email_address:, request_options: {})
      end

      # Get an IntraFi Account Enrollment
      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def retrieve(intrafi_account_enrollment_id, request_options: {})
      end

      # List IntraFi Account Enrollments
      sig do
        params(
          account_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::IntrafiAccountEnrollment])
      end
      def list(
        account_id: nil,
        cursor: nil,
        idempotency_key: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # Unenroll an account from IntraFi
      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def unenroll(intrafi_account_enrollment_id, request_options: {})
      end

      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
