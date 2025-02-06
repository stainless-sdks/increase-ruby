# typed: strong

module Increase
  module Models
    class CheckDepositCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :back_image_file_id

      sig { returns(String) }
      attr_accessor :front_image_file_id

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          account_id: String,
          amount: Integer,
          back_image_file_id: String,
          front_image_file_id: String,
          description: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        account_id:,
        amount:,
        back_image_file_id:,
        front_image_file_id:,
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Integer,
            back_image_file_id: String,
            front_image_file_id: String,
            description: String,
            request_options: Increase::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
