# typed: strong

module Increase
  module Models
    class RealTimePaymentsRequestForPaymentCreateParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { returns(Integer) }
      attr_accessor :amount

      sig { returns(Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor) }
      attr_accessor :debtor

      sig { returns(String) }
      attr_accessor :destination_account_number_id

      sig { returns(Date) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :remittance_information

      sig { returns(String) }
      attr_accessor :source_account_number

      sig { returns(String) }
      attr_accessor :source_routing_number

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
        ).void
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
        override.returns(
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
        attr_accessor :address

        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            address: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address,
            name: String
          ).void
        end
        def initialize(address:, name:)
        end

        sig do
          override.returns(
            {
              address: Increase::Models::RealTimePaymentsRequestForPaymentCreateParams::Debtor::Address,
              name: String
            }
          )
        end
        def to_hash
        end

        class Address < Increase::BaseModel
          sig { returns(String) }
          attr_accessor :country

          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          sig { returns(T.nilable(String)) }
          attr_reader :post_code

          sig { params(post_code: String).void }
          attr_writer :post_code

          sig { returns(T.nilable(String)) }
          attr_reader :street_name

          sig { params(street_name: String).void }
          attr_writer :street_name

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
