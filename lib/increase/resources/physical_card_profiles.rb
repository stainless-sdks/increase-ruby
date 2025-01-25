# frozen_string_literal: true

module Increase
  module Resources
    class PhysicalCardProfiles
      # Create a Physical Card Profile
      #
      # @param params [Increase::Models::PhysicalCardProfileCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :carrier_image_file_id The identifier of the File containing the physical card's carrier image.
      #
      #   @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      #
      #   @option params [String] :description A description you can use to identify the Card Profile.
      #
      #   @option params [String] :front_image_file_id The identifier of the File containing the physical card's front image.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::PhysicalCardProfile]
      #
      def create(params)
        parsed, options = Increase::Models::PhysicalCardProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "physical_card_profiles",
          body: parsed,
          model: Increase::Models::PhysicalCardProfile,
          options: options
        )
      end

      # Retrieve a Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Card Profile.
      #
      # @param params [Increase::Models::PhysicalCardProfileRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::PhysicalCardProfile]
      #
      def retrieve(physical_card_profile_id, params = {})
        @client.request(
          method: :get,
          path: ["physical_card_profiles/%0s", physical_card_profile_id],
          model: Increase::Models::PhysicalCardProfile,
          options: params[:request_options]
        )
      end

      # List Physical Card Profiles
      #
      # @param params [Increase::Models::PhysicalCardProfileListParams, Hash{Symbol=>Object}] .
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
      #   @option params [Increase::Models::PhysicalCardProfileListParams::Status] :status
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Page<Increase::Models::PhysicalCardProfile>]
      #
      def list(params = {})
        parsed, options = Increase::Models::PhysicalCardProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "physical_card_profiles",
          query: parsed,
          page: Increase::Page,
          model: Increase::Models::PhysicalCardProfile,
          options: options
        )
      end

      # Archive a Physical Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Physical Card Profile to archive.
      #
      # @param params [Increase::Models::PhysicalCardProfileArchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::PhysicalCardProfile]
      #
      def archive(physical_card_profile_id, params = {})
        @client.request(
          method: :post,
          path: ["physical_card_profiles/%0s/archive", physical_card_profile_id],
          model: Increase::Models::PhysicalCardProfile,
          options: params[:request_options]
        )
      end

      # Clone a Physical Card Profile
      #
      # @param physical_card_profile_id [String] The identifier of the Physical Card Profile to clone.
      #
      # @param params [Increase::Models::PhysicalCardProfileCloneParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :carrier_image_file_id The identifier of the File containing the physical card's carrier image.
      #
      #   @option params [String] :contact_phone A phone number the user can contact to receive support for their card.
      #
      #   @option params [String] :description A description you can use to identify the Card Profile.
      #
      #   @option params [String] :front_image_file_id The identifier of the File containing the physical card's front image.
      #
      #   @option params [Increase::Models::PhysicalCardProfileCloneParams::FrontText] :front_text Text printed on the front of the card. Reach out to
      #     [support@increase.com](mailto:support@increase.com) for more information.
      #
      #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Increase::Models::PhysicalCardProfile]
      #
      def clone_(physical_card_profile_id, params = {})
        parsed, options = Increase::Models::PhysicalCardProfileCloneParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["physical_card_profiles/%0s/clone", physical_card_profile_id],
          body: parsed,
          model: Increase::Models::PhysicalCardProfile,
          options: options
        )
      end

      # @param client [Increase::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
