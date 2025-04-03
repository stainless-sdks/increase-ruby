# frozen_string_literal: true

module Increase
  module Resources
    class DigitalCardProfiles
      # Create a Digital Card Profile
      #
      # @overload create(app_icon_file_id:, background_image_file_id:, card_description:, description:, issuer_name:, contact_email: nil, contact_phone: nil, contact_website: nil, text_color: nil, request_options: {})
      #
      # @param app_icon_file_id [String]
      # @param background_image_file_id [String]
      # @param card_description [String]
      # @param description [String]
      # @param issuer_name [String]
      # @param contact_email [String]
      # @param contact_phone [String]
      # @param contact_website [String]
      # @param text_color [Increase::Models::DigitalCardProfileCreateParams::TextColor]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload retrieve(digital_card_profile_id, request_options: {})
      #
      # @param digital_card_profile_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload list(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      #
      # @param cursor [String]
      # @param idempotency_key [String]
      # @param limit [Integer]
      # @param status [Increase::Models::DigitalCardProfileListParams::Status]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Increase::Internal::Page<Increase::Models::DigitalCardProfile>]
      #
      # @see Increase::Models::DigitalCardProfileListParams
      def list(params = {})
        parsed, options = Increase::Models::DigitalCardProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "digital_card_profiles",
          query: parsed,
          page: Increase::Internal::Page,
          model: Increase::Models::DigitalCardProfile,
          options: options
        )
      end

      # Archive a Digital Card Profile
      #
      # @overload archive(digital_card_profile_id, request_options: {})
      #
      # @param digital_card_profile_id [String]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload clone_(digital_card_profile_id, app_icon_file_id: nil, background_image_file_id: nil, card_description: nil, contact_email: nil, contact_phone: nil, contact_website: nil, description: nil, issuer_name: nil, text_color: nil, request_options: {})
      #
      # @param digital_card_profile_id [String]
      # @param app_icon_file_id [String]
      # @param background_image_file_id [String]
      # @param card_description [String]
      # @param contact_email [String]
      # @param contact_phone [String]
      # @param contact_website [String]
      # @param description [String]
      # @param issuer_name [String]
      # @param text_color [Increase::Models::DigitalCardProfileCloneParams::TextColor]
      # @param request_options [Increase::RequestOptions, Hash{Symbol=>Object}, nil]
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
