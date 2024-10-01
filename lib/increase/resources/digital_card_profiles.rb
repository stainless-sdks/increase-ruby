# frozen_string_literal: true

module Increase
  module Resources
    class DigitalCardProfiles
      def initialize(client:)
        @client = client
      end

      # Create a Digital Card Profile
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :app_icon_file_id The identifier of the File containing the card's icon image.
      # @option params [String] :background_image_file_id The identifier of the File containing the card's front image.
      # @option params [String] :card_description A user-facing description for the card itself.
      # @option params [String] :description A description you can use to identify the Card Profile.
      # @option params [String] :issuer_name A user-facing description for whoever is issuing the card.
      # @option params [String, nil] :contact_email An email address the user can contact to receive support for their card.
      # @option params [String, nil] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String, nil] :contact_website A website the user can visit to view and receive support for their card.
      # @option params [TextColor, nil] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def create(params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/digital_card_profiles"
        req[:body] = params
        req[:model] = Increase::Models::DigitalCardProfile
        @client.request(req, opts)
      end

      # Retrieve a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def retrieve(digital_card_profile_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/digital_card_profiles/#{digital_card_profile_id}"
        req[:model] = Increase::Models::DigitalCardProfile
        @client.request(req, opts)
      end

      # List Card Profiles
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :cursor Return the page of entries after this one.
      # @option params [String, nil] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #   that object. This value is unique across Increase and is used to ensure that a
      #   request is only processed once. Learn more about
      #   [idempotency](https://increase.com/documentation/idempotency-keys).
      # @option params [Integer, nil] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #   objects.
      # @option params [Status, nil] :status
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Page<Increase::Models::DigitalCardProfile>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/digital_card_profiles"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::DigitalCardProfile
        @client.request(req, opts)
      end

      # Archive a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to archive.
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def archive(digital_card_profile_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/digital_card_profiles/#{digital_card_profile_id}/archive"
        req[:model] = Increase::Models::DigitalCardProfile
        @client.request(req, opts)
      end

      # Clones a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to clone.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String, nil] :app_icon_file_id The identifier of the File containing the card's icon image.
      # @option params [String, nil] :background_image_file_id The identifier of the File containing the card's front image.
      # @option params [String, nil] :card_description A user-facing description for the card itself.
      # @option params [String, nil] :contact_email An email address the user can contact to receive support for their card.
      # @option params [String, nil] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String, nil] :contact_website A website the user can visit to view and receive support for their card.
      # @option params [String, nil] :description A description you can use to identify the Card Profile.
      # @option params [String, nil] :issuer_name A user-facing description for whoever is issuing the card.
      # @option params [TextColor, nil] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      # @param opts [Hash, RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def clone(digital_card_profile_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/digital_card_profiles/#{digital_card_profile_id}/clone"
        req[:body] = params
        req[:model] = Increase::Models::DigitalCardProfile
        @client.request(req, opts)
      end

      class TextColor < BaseModel
        # @!attribute [rw] blue
        #   The value of the blue channel in the RGB color.
        #   @return [Integer]
        required :blue, Integer

        # @!attribute [rw] green
        #   The value of the green channel in the RGB color.
        #   @return [Integer]
        required :green, Integer

        # @!attribute [rw] red
        #   The value of the red channel in the RGB color.
        #   @return [Integer]
        required :red, Integer
      end

      class Status < BaseModel
        # @!attribute [rw] in_
        #   Filter Digital Card Profiles for those with the specified digital wallet status or statuses. For GET requests, this should be encoded as a comma-delimited string, such as `?in=one,two,three`.
        #   @return [Array<Symbol, Status::In>]
        optional :in_, Increase::ArrayOf.new(enum: -> { Status::In })

        class In < Increase::Enum
          # The Card Profile is awaiting review from Increase and/or processing by card networks.
          PENDING = :pending

          # There is an issue with the Card Profile preventing it from use.
          REJECTED = :rejected

          # The Card Profile can be assigned to Cards.
          ACTIVE = :active

          # The Card Profile is no longer in use.
          ARCHIVED = :archived
        end
      end

      class TextColor < BaseModel
        # @!attribute [rw] blue
        #   The value of the blue channel in the RGB color.
        #   @return [Integer]
        required :blue, Integer

        # @!attribute [rw] green
        #   The value of the green channel in the RGB color.
        #   @return [Integer]
        required :green, Integer

        # @!attribute [rw] red
        #   The value of the red channel in the RGB color.
        #   @return [Integer]
        required :red, Integer
      end
    end
  end
end
