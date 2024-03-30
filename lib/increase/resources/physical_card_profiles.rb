# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCardProfiles
      def initialize(client:)
        @client = client
      end

      # Create a Physical Card Profile
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :carrier_image_file_id The identifier of the File containing the physical card's carrier image.
      # @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String] :description A description you can use to identify the Card Profile.
      # @option params [String] :front_image_file_id The identifier of the File containing the physical card's front image.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCardProfile]
      def create(params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/physical_card_profiles"
        request[:body] = params
        request[:model] = Increase::Models::PhysicalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Retrieve a Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Card Profile.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCardProfile]
      def retrieve(physical_card_profile_id, opts = {})
        request = {}
        request[:method] = :get
        request[:path] = "/physical_card_profiles/#{physical_card_profile_id}"
        request[:model] = Increase::Models::PhysicalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Archive a Physical Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Physical Card Profile to archive.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCardProfile]
      def archive(physical_card_profile_id, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/physical_card_profiles/#{physical_card_profile_id}/archive"
        request[:model] = Increase::Models::PhysicalCardProfile
        request.merge!(opts)
        @client.request(request)
      end

      # Clone a Physical Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Physical Card Profile to clone.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [String] :carrier_image_file_id The identifier of the File containing the physical card's carrier image.
      # @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      # @option params [String] :description A description you can use to identify the Card Profile.
      # @option params [String] :front_image_file_id The identifier of the File containing the physical card's front image.
      # @option params [Hash] :front_text Text printed on the front of the card. Reach out to
      #   [support@increase.com](mailto:support@increase.com) for more information.
      #
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::PhysicalCardProfile]
      def clone(physical_card_profile_id, params = {}, opts = {})
        request = {}
        request[:method] = :post
        request[:path] = "/physical_card_profiles/#{physical_card_profile_id}/clone"
        request[:body] = params
        request[:model] = Increase::Models::PhysicalCardProfile
        request.merge!(opts)
        @client.request(request)
      end
    end
  end
end
