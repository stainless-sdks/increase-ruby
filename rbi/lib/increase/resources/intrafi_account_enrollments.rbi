# typed: strong

module Increase
  module Resources
    class IntrafiAccountEnrollments
      sig do
        params(
          account_id: String,
          email_address: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def create(account_id:, email_address:, request_options: {})
      end

      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def retrieve(intrafi_account_enrollment_id, request_options: {})
      end

      sig do
        params(
          account_id: String,
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::IntrafiAccountEnrollmentListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Page[Increase::Models::IntrafiAccountEnrollment])
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

      sig do
        params(
          intrafi_account_enrollment_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Increase::Models::IntrafiAccountEnrollment)
      end
      def unenroll(intrafi_account_enrollment_id, request_options: {})
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
