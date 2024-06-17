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
        req = {}
        req[:method] = :post
        req[:path] = "/physical_card_profiles"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCardProfile
        @client.request(req, opts)
      end

      # Retrieve a Card Profile
      # 
      # @param physical_card_profile_id [String] The identifier of the Card Profile.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::PhysicalCardProfile]
      def retrieve(physical_card_profile_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/physical_card_profiles/#{physical_card_profile_id}"
        req[:model] = Increase::Models::PhysicalCardProfile
        @client.request(req, opts)
      end

      # List Physical Card Profiles
      # 
      # @param params [Hash] Attributes to send in this request.
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
      # @return [Increase::Page<Increase::Models::PhysicalCardProfile>]
      def list(params = {}, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/physical_card_profiles"
        req[:query] = params
        req[:page] = Increase::Page
        req[:model] = Increase::Models::PhysicalCardProfile
        @client.request(req, opts)
      end

      # Archive a Physical Card Profile
      # 
      # @param physical_card_profile_id [String] The identifier of the Physical Card Profile to archive.
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::PhysicalCardProfile]
      def archive(physical_card_profile_id, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/physical_card_profiles/#{physical_card_profile_id}/archive"
        req[:model] = Increase::Models::PhysicalCardProfile
        @client.request(req, opts)
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
      # @option params [FrontText] :front_text Text printed on the front of the card. Reach out to
      #   [support@increase.com](mailto:support@increase.com) for more information.
      # 
      # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
      # 
      # @return [Increase::Models::PhysicalCardProfile]
      def clone(physical_card_profile_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/physical_card_profiles/#{physical_card_profile_id}/clone"
        req[:body] = params
        req[:model] = Increase::Models::PhysicalCardProfile
        @client.request(req, opts)
      end
    end
  end
end
