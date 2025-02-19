# typed: strong

module Increase
  module Models
    class RealTimePaymentsRequestForPaymentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor) }
      def debtor
      end

      sig do
        params(_: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor)
          .returns(Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor)
      end
      def debtor=(_)
      end

      sig { returns(String) }
      def destination_account_number_id
      end

      sig { params(_: String).returns(String) }
      def destination_account_number_id=(_)
      end

      sig { returns(Date) }
      def expires_at
      end

      sig { params(_: Date).returns(Date) }
      def expires_at=(_)
      end

      sig { returns(String) }
      def remittance_information
      end

      sig { params(_: String).returns(String) }
      def remittance_information=(_)
      end

      sig { returns(String) }
      def source_account_number
      end

      sig { params(_: String).returns(String) }
      def source_account_number=(_)
      end

      sig { returns(String) }
      def source_routing_number
      end

      sig { params(_: String).returns(String) }
      def source_routing_number=(_)
      end

      sig do
        params(
          amount: Integer,
          debtor: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor,
          destination_account_number_id: String,
          expires_at: Date,
          remittance_information: String,
          source_account_number: String,
          source_routing_number: String,
          request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        amount:,
        debtor:,
        destination_account_number_id:,
        expires_at:,
        remittance_information:,
        source_account_number:,
        source_routing_number:,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              debtor: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor,
              destination_account_number_id: String,
              expires_at: Date,
              remittance_information: String,
              source_account_number: String,
              source_routing_number: String,
              request_options: Increase::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Debtor < Increase::BaseModel
        sig { returns(Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address) }
        def address
        end

        sig do
          params(_: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address)
            .returns(Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address)
        end
        def address=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig do
          params(
            address: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address,
            name: String
          )
            .void
        end
        def initialize(address:, name:)
        end

        sig do
          override
            .returns(
              {address: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address, name: String}
            )
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          def country
          end

          sig { params(_: String).returns(String) }
          def country=(_)
          end

          sig { returns(T.nilable(String)) }
          def city
          end

          sig { params(_: String).returns(String) }
          def city=(_)
          end

          sig { returns(T.nilable(String)) }
          def post_code
          end

          sig { params(_: String).returns(String) }
          def post_code=(_)
          end

          sig { returns(T.nilable(String)) }
          def street_name
          end

          sig { params(_: String).returns(String) }
          def street_name=(_)
          end

          sig { params(country: String, city: String, post_code: String, street_name: String).void }
          def initialize(country:, city: nil, post_code: nil, street_name: nil)
          end

          sig { override.returns({country: String, city: String, post_code: String, street_name: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
