# frozen_string_literal: true

module Increase
  module Resources
    class Documents
      def initialize(client:)
        @client = client
      end

      # Retrieve a Document
      #
      # @param document_id [String] The identifier of the Document to retrieve.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::Document]
      def retrieve(document_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/documents/#{document_id}"
        req[:model] = Increase::Models::Document
        @client.request(req, opts)
      end

      # List Documents
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Category, nil] :category
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :entity_id Filter Documents to ones belonging to the specified Entity.
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::Document>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/documents"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::Document
        @client.request(req, opts)
      end

      class Category < BaseModel
        # @!attribute [rw] in_
        #   Filter Documents for those with the specified category or categories. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Category::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Category::In })

        class In < Increase::Enum
          # Internal Revenue Service Form 1099-INT.
          FORM_1099_INT = :form_1099_int

          # A document submitted in response to a proof of authorization request for an ACH transfer.
          PROOF_OF_AUTHORIZATION = :proof_of_authorization

          # Company information, such a policies or procedures, typically submitted during our due diligence process.
          COMPANY_INFORMATION = :company_information
        end
      end

      class CreatedAt < BaseModel
        # @!attribute [rw] after
        #   Return results after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :after, DateTime

        # @!attribute [rw] before
        #   Return results before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :before, DateTime

        # @!attribute [rw] on_or_after
        #   Return results on or after this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_after, DateTime

        # @!attribute [rw] on_or_before
        #   Return results on or before this [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) timestamp.
        #   @return [DateTime]
        optional :on_or_before, DateTime
      end
    end
  end
end
