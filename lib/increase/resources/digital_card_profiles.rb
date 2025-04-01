# frozen_string_literal: true

module Increase
  module Resources
    class DigitalCardProfiles
      # Create a Digital Card Profile
      #
      # @param params [Increase::Models::DigitalCardProfileCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :app_icon_file_id The identifier of the File containing the card's icon image.
      #
      #   @option params [String] :background_image_file_id The identifier of the File containing the card's front image.
      #
      #   @option params [String] :card_description A user-facing description for the card itself.
      #
      #   @option params [String] :description A description you can use to identify the Card Profile.
      #
      #   @option params [String] :issuer_name A user-facing description for whoever is issuing the card.
      #
      #   @option params [String] :contact_email An email address the user can contact to receive support for their card.
      #
      #   @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      #
      #   @option params [String] :contact_website A website the user can visit to view and receive support for their card.
      #
      #   @option params [Increase::Models::DigitalCardProfileCreateParams::TextColor] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::DigitalCardProfile]
      #
      # @see Increase::Models::DigitalCardProfileCreateParams
      def create(params)
        parsed, options = Increase::Models::DigitalCardProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "digital_card_profiles",
          body: parsed,
          model: Increase::Models::DigitalCardProfile,
          options: options
        )
      end

      # Retrieve a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile.
      #
      # @param params [Increase::Models::DigitalCardProfileRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::DigitalCardProfile]
      #
      # @see Increase::Models::DigitalCardProfileRetrieveParams
      def retrieve(digital_card_profile_id, params = {})
        @client.request(
          method: :get,
          path: ["digital_card_profiles/%1$s", digital_card_profile_id],
          model: Increase::Models::DigitalCardProfile,
          options: params[:request_options]
        )
      end

      # List Card Profiles
      #
      # @param params [Increase::Models::DigitalCardProfileListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :cursor Return the page of entries after this one.
      #
      #   @option params [String] :idempotency_key Filter records to the one with the specified `idempotency_key` you chose for
      #     that object. This value is unique across Increase and is used to ensure that a
      #     request is only processed once. Learn more about
      #     [idempotency](https://increase.com/documentation/idempotency-keys).
      #
      #   @option params [Integer] :limit Limit the size of the list that is returned. The default (and maximum) is 100
      #     objects.
      #
      #   @option params [Increase::Models::DigitalCardProfileListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Page<Increase::Models::DigitalCardProfile>]
      #
      # @see Increase::Models::DigitalCardProfileListParams
      def list(params = {})
        parsed, options = Increase::Models::DigitalCardProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "digital_card_profiles",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::DigitalCardProfile,
          options: options
        )
      end

      # Archive a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to archive.
      #
      # @param params [Increase::Models::DigitalCardProfileArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::DigitalCardProfile]
      #
      # @see Increase::Models::DigitalCardProfileArchiveParams
      def archive(digital_card_profile_id, params = {})
        @client.request(
          method: :post,
          path: ["digital_card_profiles/%1$s/archive", digital_card_profile_id],
          model: Increase::Models::DigitalCardProfile,
          options: params[:request_options]
        )
      end

      # Clones a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to clone.
      #
      # @param params [Increase::Models::DigitalCardProfileCloneParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :app_icon_file_id The identifier of the File containing the card's icon image.
      #
      #   @option params [String] :background_image_file_id The identifier of the File containing the card's front image.
      #
      #   @option params [String] :card_description A user-facing description for the card itself.
      #
      #   @option params [String] :contact_email An email address the user can contact to receive support for their card.
      #
      #   @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      #
      #   @option params [String] :contact_website A website the user can visit to view and receive support for their card.
      #
      #   @option params [String] :description A description you can use to identify the Card Profile.
      #
      #   @option params [String] :issuer_name A user-facing description for whoever is issuing the card.
      #
      #   @option params [Increase::Models::DigitalCardProfileCloneParams::TextColor] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Increase::Models::DigitalCardProfile]
      #
      # @see Increase::Models::DigitalCardProfileCloneParams
      def clone_(digital_card_profile_id, params = {})
        parsed, options = Increase::Models::DigitalCardProfileCloneParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["digital_card_profiles/%1$s/clone", digital_card_profile_id],
          body: parsed,
          model: Increase::Models::DigitalCardProfile,
          options: options
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
