# typed: strong

module Increase
  module Models
    class EntityArchiveBeneficialOwnerParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifying details of anyone controlling or owning 25% or more of the
      #   corporation.
      sig { returns(String) }
      attr_accessor :beneficial_owner_id

      sig do
        params(
          beneficial_owner_id: String,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(beneficial_owner_id:, request_options: {})
      end

      sig { override.returns({beneficial_owner_id: String, request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
