# frozen_string_literal: true

module Increase
  module Models
    class CardPurchaseSupplement < BaseModel
      # @!attribute [rw] id
      required :id, String

      # @!attribute [rw] card_payment_id
      required :card_payment_id, String

      # @!attribute [rw] invoice
      required :invoice, -> { Increase::Models::CardPurchaseSupplement::Invoice }

      # @!attribute [rw] line_items
      required :line_items,
               Increase::ArrayOf.new(
                 lambda {
                   Increase::Models::CardPurchaseSupplement::LineItem
                 }
               )

      # @!attribute [rw] transaction_id
      required :transaction_id, String

      # @!attribute [rw] type
      required :type, Increase::Enum.new([:card_purchase_supplement])

      class Invoice < BaseModel
        # @!attribute [rw] discount_amount
        required :discount_amount, Integer

        # @!attribute [rw] discount_currency
        required :discount_currency, String

        # @!attribute [rw] discount_treatment_code
        required :discount_treatment_code,
                 Increase::Enum.new(
                   [
                     :no_invoice_level_discount_provided,
                     :tax_calculated_on_post_discount_invoice_total,
                     :tax_calculated_on_pre_discount_invoice_total
                   ]
                 )

        # @!attribute [rw] duty_tax_amount
        required :duty_tax_amount, Integer

        # @!attribute [rw] duty_tax_currency
        required :duty_tax_currency, String

        # @!attribute [rw] order_date
        required :order_date, String

        # @!attribute [rw] shipping_amount
        required :shipping_amount, Integer

        # @!attribute [rw] shipping_currency
        required :shipping_currency, String

        # @!attribute [rw] shipping_destination_country_code
        required :shipping_destination_country_code, String

        # @!attribute [rw] shipping_destination_postal_code
        required :shipping_destination_postal_code, String

        # @!attribute [rw] shipping_source_postal_code
        required :shipping_source_postal_code, String

        # @!attribute [rw] shipping_tax_amount
        required :shipping_tax_amount, Integer

        # @!attribute [rw] shipping_tax_currency
        required :shipping_tax_currency, String

        # @!attribute [rw] shipping_tax_rate
        required :shipping_tax_rate, String

        # @!attribute [rw] tax_treatments
        required :tax_treatments,
                 Increase::Enum.new(
                   [
                     :no_tax_applies,
                     :net_price_line_item_level,
                     :net_price_invoice_level,
                     :gross_price_line_item_level,
                     :gross_price_invoice_level
                   ]
                 )

        # @!attribute [rw] unique_value_added_tax_invoice_reference
        required :unique_value_added_tax_invoice_reference, String
      end

      class LineItem < BaseModel
        # @!attribute [rw] detail_indicator
        required :detail_indicator, Increase::Enum.new([:normal, :credit, :payment])

        # @!attribute [rw] discount_amount
        required :discount_amount, Integer

        # @!attribute [rw] discount_currency
        required :discount_currency, String

        # @!attribute [rw] discount_treatment_code
        required :discount_treatment_code,
                 Increase::Enum.new(
                   [
                     :no_line_item_level_discount_provided,
                     :tax_calculated_on_post_discount_line_item_total,
                     :tax_calculated_on_pre_discount_line_item_total
                   ]
                 )

        # @!attribute [rw] item_commodity_code
        required :item_commodity_code, String

        # @!attribute [rw] item_descriptor
        required :item_descriptor, String

        # @!attribute [rw] item_quantity
        required :item_quantity, String

        # @!attribute [rw] product_code
        required :product_code, String

        # @!attribute [rw] sales_tax_amount
        required :sales_tax_amount, Integer

        # @!attribute [rw] sales_tax_currency
        required :sales_tax_currency, String

        # @!attribute [rw] sales_tax_rate
        required :sales_tax_rate, String

        # @!attribute [rw] total_amount
        required :total_amount, Integer

        # @!attribute [rw] total_amount_currency
        required :total_amount_currency, String

        # @!attribute [rw] unit_cost
        required :unit_cost, String

        # @!attribute [rw] unit_cost_currency
        required :unit_cost_currency, String

        # @!attribute [rw] unit_of_measure_code
        required :unit_of_measure_code, String
      end
    end
  end
end
