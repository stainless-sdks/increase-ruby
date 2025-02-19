# typed: strong

module Increase
  module Resources
    class PhysicalCardProfiles
      sig do
        params(
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def create(
        carrier_image_file_id:,
        contact_phone:,
        description:,
        front_image_file_id:,
        request_options: {}
      )
      end

      sig do
        params(
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def retrieve(physical_card_profile_id, request_options: {})
      end

      sig do
        params(
          cursor: String,
          idempotency_key: String,
          limit: Integer,
          status: Increase::Models::PhysicalCardProfileListParams::Status,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Page[Increase::Models::PhysicalCardProfile])
      end
      def list(cursor: nil, idempotency_key: nil, limit: nil, status: nil, request_options: {})
      end

      sig do
        params(
          physical_card_profile_id: String,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def archive(physical_card_profile_id, request_options: {})
      end

      sig do
        params(
          physical_card_profile_id: String,
          carrier_image_file_id: String,
          contact_phone: String,
          description: String,
          front_image_file_id: String,
          front_text: Increase::Models::PhysicalCardProfileCloneParams::FrontText,
          request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Increase::Models::PhysicalCardProfile)
      end
      def clone_(
        physical_card_profile_id,
        carrier_image_file_id: nil,
        contact_phone: nil,
        description: nil,
        front_image_file_id: nil,
        front_text: nil,
        request_options: {}
      )
      end

      sig { params(client: Increase::Client).void }
      def initialize(client:)
      end
    end
  end
end
