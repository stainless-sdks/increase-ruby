# typed: strong

module Increase
  module Models
    class CheckDepositCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      # The identifier for the Account to deposit the check in.
      sig { returns(String) }
      def account_id
      end

      sig { params(_: String).returns(String) }
      def account_id=(_)
      end

      # The deposit amount in USD cents.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The File containing the check's back image.
      sig { returns(String) }
      def back_image_file_id
      end

      sig { params(_: String).returns(String) }
      def back_image_file_id=(_)
      end

      # The File containing the check's front image.
      sig { returns(String) }
      def front_image_file_id
      end

      sig { params(_: String).returns(String) }
      def front_image_file_id=(_)
      end

      # The description you choose to give the Check Deposit, for display purposes only.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig do
        params(
          account_id: String,
          amount: Integer,
          back_image_file_id: String,
          front_image_file_id: String,
          description: String,
          request_options: T.any(Increase::RequestOptions, Increase::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(account_id:, amount:, back_image_file_id:, front_image_file_id:, description: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
