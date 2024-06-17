# frozen_string_literal: true

module Increase
  module Resources
    class Intrafi
      class AccountEnrollments
        def initialize(client:)
          @client = client
        end

        # Enroll an account in the IntraFi deposit sweep network.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_id The identifier for the account to be added to IntraFi.
        # @option params [String] :email_address The contact email for the account owner, to be shared with IntraFi.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::IntrafiAccountEnrollment]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/intrafi_account_enrollments"
          req[:body] = params
          req[:model] = Increase::Models::IntrafiAccountEnrollment
          @client.request(req, opts)
        end

        # Get an IntraFi Account Enrollment
        # 
        # @param intrafi_account_enrollment_id [String] The identifier of the IntraFi Account Enrollment to retrieve.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::IntrafiAccountEnrollment]
        def retrieve(intrafi_account_enrollment_id, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/intrafi_account_enrollments/#{intrafi_account_enrollment_id}"
          req[:model] = Increase::Models::IntrafiAccountEnrollment
          @client.request(req, opts)
        end

        # List IntraFi Account Enrollments
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :account_id Filter IntraFi Account Enrollments to the one belonging to an account.
        # @option params [String] :cursor Return the page of entries after this one.
        # @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
        #   that object. This value is unique across Increase and is used to ensure that a
        #   request is only processed once. Learn more about
        #   [idempotency](https://increase.com/documentation/idempotency-keys).
        # @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
        #   objects.
        # @option params [Status] :status
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Page<Increase::Models::IntrafiAccountEnrollment>]
        def list(params = {}, opts = {})
          req = {}
          req[:method] = :get
          req[:path] = "/intrafi_account_enrollments"
          req[:query] = params
          req[:page] = Increase::Page
          req[:model] = Increase::Models::IntrafiAccountEnrollment
          @client.request(req, opts)
        end

        # Unenroll an account from IntraFi.
        # 
        # @param intrafi_account_enrollment_id [String] The Identifier of the IntraFi Account Enrollment to remove from IntraFi.
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::IntrafiAccountEnrollment]
        def unenroll(intrafi_account_enrollment_id, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/intrafi_account_enrollments/#{intrafi_account_enrollment_id}/unenroll"
          req[:model] = Increase::Models::IntrafiAccountEnrollment
          @client.request(req, opts)
        end
      end
    end
  end
end
