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
      # @option params [String] :contact_email An email address the user can contact to receive support for their card.
      # @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String] :contact_website A website the user can visit to view and receive support for their card.
      # @option params [Hash] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/digital_card_profiles"
        request[:body] = params
        request[:model] = Increase::Models::DigitalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def retrieve(digital_card_profile_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/digital_card_profiles/#{digital_card_profile_id}"
        request[:model] = Increase::Models::DigitalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Archive a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to archive.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def archive(digital_card_profile_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/digital_card_profiles/#{digital_card_profile_id}/archive"
        request[:model] = Increase::Models::DigitalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Clones a Digital Card Profile
      #
      # @param digital_card_profile_id [String] The identifier of the Digital Card Profile to clone.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :app_icon_file_id The identifier of the File containing the card's icon image.
      # @option params [String] :background_image_file_id The identifier of the File containing the card's front image.
      # @option params [String] :card_description A user-facing description for the card itself.
      # @option params [String] :contact_email An email address the user can contact to receive support for their card.
      # @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String] :contact_website A website the user can visit to view and receive support for their card.
      # @option params [String] :description A description you can use to identify the Card Profile.
      # @option params [String] :issuer_name A user-facing description for whoever is issuing the card.
      # @option params [Hash] :text_color The Card's text color, specified as an RGB triple. The default is white.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::DigitalCardProfile]
      def clone(digital_card_profile_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/digital_card_profiles/#{digital_card_profile_id}/clone"
        request[:body] = params
        request[:model] = Increase::Models::DigitalCardProfile
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
