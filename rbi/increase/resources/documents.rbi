# typed: strong

module Increase
  module Resources
    class Documents
      # Create a Document
      sig do
        params(
          category: Increase::DocumentCreateParams::Category::OrSymbol,
          account_verification_letter: Increase::DocumentCreateParams::AccountVerificationLetter::OrHash,
          funding_instructions: Increase::DocumentCreateParams::FundingInstructions::OrHash,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(Increase::Document)
      end
      def create(
        # The type of document to create.
      category:,
        # An account verification letter.
      account_verification_letter: nil,
        # Funding instructions.
      funding_instructions: nil,
        request_options: {}
      ); end

      # Retrieve a Document
      sig { params(document_id: String, request_options: Increase::RequestOptions::OrHash).returns(Increase::Document) }
      def retrieve(
        # The identifier of the Document to retrieve.
      document_id,
        request_options: {}
      ); end

      # List Documents
      sig do
        params(
          category: Increase::DocumentListParams::Category::OrHash,
          created_at: Increase::DocumentListParams::CreatedAt::OrHash,
          cursor: String,
          entity_id: String,
          idempotency_key: String,
          limit: Integer,
          request_options: Increase::RequestOptions::OrHash
        )
          .returns(Increase::Internal::Page[Increase::Document])
      end
      def list(
        category: nil,
        created_at: nil,
        # Return the page of entries after this one.
      cursor: nil,
        # Filter Documents to ones belonging to the specified Entity.
      entity_id: nil,
        # Filter records to the one with the specified `idempotency_key` you chose for
      # that object. This value is unique across Increase and is used to ensure that a
      # request is only processed once. Learn more about
      # [idempotency](https://increase.com/documentation/idempotency-keys).
      idempotency_key: nil,
        # Limit the size of the list that is returned. The default (and maximum) is 100
      # objects.
      limit: nil,
        request_options: {}
      ); end

      # @api private
      sig { params(client: Increase::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
