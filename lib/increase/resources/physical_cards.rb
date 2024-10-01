# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCards
      def initialize(client:)
        @client = client
      end

      # Create a Physical Card
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :card_id The underlying card representing this physical card.
      # @option params [Cardholder] :cardholder Details about the cardholder, as it will appear on the physical card.
      # @option params [Shipment] :shipment The details used to ship this physical card.
      # @option params [String, nil] :physical_card_profile_id The physical card profile to use for this physical card. The latest default
      #   physical card profile will be used if not provided.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/physical_cards"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end

      # Retrieve a Physical Card
      #
      # @param physical_card_id [String] The identifier of the Physical Card.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def retrieve(physical_card_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/physical_cards/#{physical_card_id}"
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end

      # Update a Physical Card
      #
      # @param physical_card_id [String] The Physical Card identifier.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [Symbol, Status] :status The status to update the Physical Card to.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCard]
      def update(physical_card_id, params = {}, opts = {})
        req = {}
        req[:method] = :patch
        req[:path] = "/physical_cards/#{physical_card_id}"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end

      # List Physical Cards
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :card_id Filter Physical Cards to ones belonging to the specified Card.
      # @option params [CreatedAt, nil] :created_at
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::PhysicalCard>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/physical_cards"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::PhysicalCard
        @client.request(req, opts)
      end

      class Cardholder < BaseModel
        # @!attribute [rw] first_name
        #   The cardholder's first name.
        #   @return [String]
        required :first_name, String

        # @!attribute [rw] last_name
        #   The cardholder's last name.
        #   @return [String]
        required :last_name, String
      end

      class Shipment < BaseModel
        # @!attribute [rw] address
        #   The address to where the card should be shipped.
        #   @return [Shipment::Address]
        required :address, -> { Shipment::Address }

        # @!attribute [rw] method_
        #   The shipping method to use.
        #   @return [Symbol, Shipment::Method]
        required :method_, enum: -> { Shipment::Method }

        class Address < BaseModel
          # @!attribute [rw] city
          #   The city of the shipping address.
          #   @return [String]
          required :city, String

          # @!attribute [rw] line1
          #   The first line of the shipping address.
          #   @return [String]
          required :line1, String

          # @!attribute [rw] name_
          #   The name of the recipient.
          #   @return [String]
          required :name_, String

          # @!attribute [rw] postal_code
          #   The postal code of the shipping address.
          #   @return [String]
          required :postal_code, String

          # @!attribute [rw] state
          #   The US state of the shipping address.
          #   @return [String]
          required :state, String

          # @!attribute [rw] line2
          #   The second line of the shipping address.
          #   @return [String]
          optional :line2, String

          # @!attribute [rw] line3
          #   The third line of the shipping address.
          #   @return [String]
          optional :line3, String

          # @!attribute [rw] phone_number
          #   The phone number of the recipient.
          #   @return [String]
          optional :phone_number, String
        end

        # The shipping method to use.
        class Method < Increase::Enum
          # USPS Post with tracking.
          USPS = :usps

          # FedEx Priority Overnight, no signature.
          FEDEX_PRIORITY_OVERNIGHT = :fedex_priority_overnight

          # FedEx 2-day.
          FEDEX_2_DAY = :fedex_2_day
        end
      end

      # The status to update the Physical Card to.
      class Status < Increase::Enum
        # The physical card is active.
        ACTIVE = :active

        # The physical card is temporarily disabled.
        DISABLED = :disabled

        # The physical card is permanently canceled.
        CANCELED = :canceled
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
