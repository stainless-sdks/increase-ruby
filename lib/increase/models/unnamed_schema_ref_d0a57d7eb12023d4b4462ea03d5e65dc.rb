# frozen_string_literal: true

module Increase
  module Models
    class UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc < BaseModel
      # @!attribute [rw] category
      #   The card network used to process this card authorization.
      #   @return [Symbol]
      required :category, Increase::Enum.new(:visa)

      # @!attribute [rw] visa
      #   Fields specific to the `visa` network.
      #   @return [Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc::Visa]
      required :visa, -> { Increase::Models::UnnamedSchemaRefD0a57d7eb12023d4b4462ea03d5e65dc::Visa }

      class Visa < BaseModel
        # @!attribute [rw] electronic_commerce_indicator
        #   For electronic commerce transactions, this identifies the level of security used in obtaining the customer's payment credential. For mail or telephone order transactions, identifies the type of mail or telephone order.
        #   @return [Symbol]
        required :electronic_commerce_indicator,
                 Increase::Enum.new(
                   :mail_phone_order,
                   :recurring,
                   :installment,
                   :unknown_mail_phone_order,
                   :secure_electronic_commerce,
                   :non_authenticated_security_transaction_at_3ds_capable_merchant,
                   :non_authenticated_security_transaction,
                   :non_secure_transaction
                 )

        # @!attribute [rw] point_of_service_entry_mode
        #   The method used to enter the cardholder's primary account number and card expiration date.
        #   @return [Symbol]
        required :point_of_service_entry_mode,
                 Increase::Enum.new(
                   :unknown,
                   :manual,
                   :magnetic_stripe_no_cvv,
                   :optical_code,
                   :integrated_circuit_card,
                   :contactless,
                   :credential_on_file,
                   :magnetic_stripe,
                   :contactless_magnetic_stripe,
                   :integrated_circuit_card_no_cvv
                 )
      end
    end
  end
end
