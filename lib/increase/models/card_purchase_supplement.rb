# frozen_string_literal: true

module Increase
  module Models
    class CardPurchaseSupplement < BaseModel
      # @!attribute [rw] id
      #   The Card Purchase Supplement identifier.
      #   @return [String]
      required :id, String

      # @!attribute [rw] card_payment_id
      #   The ID of the Card Payment this transaction belongs to.
      #   @return [String]
      required :card_payment_id, String

      # @!attribute [rw] invoice
      #   Invoice-level information about the payment.
      #   @return [Increase::Models::CardPurchaseSupplement::Invoice]
      required :invoice, -> { Increase::Models::CardPurchaseSupplement::Invoice }

      # @!attribute [rw] line_items
      #   Line item information, such as individual products purchased.
      #   @return [Array<Increase::Models::CardPurchaseSupplement::LineItem>]
      required :line_items, Increase::ArrayOf.new(-> { Increase::Models::CardPurchaseSupplement::LineItem })

      # @!attribute [rw] transaction_id
      #   The ID of the transaction.
      #   @return [String]
      required :transaction_id, String

      # @!attribute [rw] type
      #   A constant representing the object's type. For this resource it will always be `card_purchase_supplement`.
      #   One of the constants defined in {Increase::Models::CardPurchaseSupplement::Type}
      #   @return [Symbol]
      required :type, enum: -> { Increase::Models::CardPurchaseSupplement::Type }

      class Invoice < BaseModel
        # @!attribute [rw] discount_amount
        #   Discount given to cardholder.
        #   @return [Integer]
        required :discount_amount, Integer

        # @!attribute [rw] discount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #   @return [String]
        required :discount_currency, String

        # @!attribute [rw] discount_treatment_code
        #   Indicates how the merchant applied the discount.
        #   One of the constants defined in {Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode}
        #   @return [Symbol]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode }

        # @!attribute [rw] duty_tax_amount
        #   Amount of duty taxes.
        #   @return [Integer]
        required :duty_tax_amount, Integer

        # @!attribute [rw] duty_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the duty tax.
        #   @return [String]
        required :duty_tax_currency, String

        # @!attribute [rw] order_date
        #   Date the order was taken.
        #   @return [Date]
        required :order_date, Date

        # @!attribute [rw] shipping_amount
        #   The shipping cost.
        #   @return [Integer]
        required :shipping_amount, Integer

        # @!attribute [rw] shipping_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping cost.
        #   @return [String]
        required :shipping_currency, String

        # @!attribute [rw] shipping_destination_country_code
        #   Country code of the shipping destination.
        #   @return [String]
        required :shipping_destination_country_code, String

        # @!attribute [rw] shipping_destination_postal_code
        #   Postal code of the shipping destination.
        #   @return [String]
        required :shipping_destination_postal_code, String

        # @!attribute [rw] shipping_source_postal_code
        #   Postal code of the location being shipped from.
        #   @return [String]
        required :shipping_source_postal_code, String

        # @!attribute [rw] shipping_tax_amount
        #   Taxes paid for freight and shipping.
        #   @return [Integer]
        required :shipping_tax_amount, Integer

        # @!attribute [rw] shipping_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping tax.
        #   @return [String]
        required :shipping_tax_currency, String

        # @!attribute [rw] shipping_tax_rate
        #   Tax rate for freight and shipping.
        #   @return [String]
        required :shipping_tax_rate, String

        # @!attribute [rw] tax_treatments
        #   Indicates how the merchant applied taxes.
        #   One of the constants defined in {Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments}
        #   @return [Symbol]
        required :tax_treatments, enum: -> { Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments }

        # @!attribute [rw] unique_value_added_tax_invoice_reference
        #   Value added tax invoice reference number.
        #   @return [String]
        required :unique_value_added_tax_invoice_reference, String

        # Indicates how the merchant applied the discount.
        class DiscountTreatmentCode < Increase::Enum
          # No invoice level discount provided
          NO_INVOICE_LEVEL_DISCOUNT_PROVIDED = :no_invoice_level_discount_provided

          # Tax calculated on post discount invoice total
          TAX_CALCULATED_ON_POST_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_post_discount_invoice_total

          # Tax calculated on pre discount invoice total
          TAX_CALCULATED_ON_PRE_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_pre_discount_invoice_total
        end

        # Indicates how the merchant applied taxes.
        class TaxTreatments < Increase::Enum
          # No tax applies
          NO_TAX_APPLIES = :no_tax_applies

          # Net price line item level
          NET_PRICE_LINE_ITEM_LEVEL = :net_price_line_item_level

          # Net price invoice level
          NET_PRICE_INVOICE_LEVEL = :net_price_invoice_level

          # Gross price line item level
          GROSS_PRICE_LINE_ITEM_LEVEL = :gross_price_line_item_level

          # Gross price invoice level
          GROSS_PRICE_INVOICE_LEVEL = :gross_price_invoice_level
        end
      end

      class LineItem < BaseModel
        # @!attribute [rw] id
        #   The Card Purchase Supplement Line Item identifier.
        #   @return [String]
        required :id, String

        # @!attribute [rw] detail_indicator
        #   Indicates the type of line item.
        #   One of the constants defined in {Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator}
        #   @return [Symbol]
        required :detail_indicator,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator }

        # @!attribute [rw] discount_amount
        #   Discount amount for this specific line item.
        #   @return [Integer]
        required :discount_amount, Integer

        # @!attribute [rw] discount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #   @return [String]
        required :discount_currency, String

        # @!attribute [rw] discount_treatment_code
        #   Indicates how the merchant applied the discount for this specific line item.
        #   One of the constants defined in {Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode}
        #   @return [Symbol]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode }

        # @!attribute [rw] item_commodity_code
        #   Code used to categorize the purchase item.
        #   @return [String]
        required :item_commodity_code, String

        # @!attribute [rw] item_descriptor
        #   Description of the purchase item.
        #   @return [String]
        required :item_descriptor, String

        # @!attribute [rw] item_quantity
        #   The number of units of the product being purchased.
        #   @return [String]
        required :item_quantity, String

        # @!attribute [rw] product_code
        #   Code used to categorize the product being purchased.
        #   @return [String]
        required :product_code, String

        # @!attribute [rw] sales_tax_amount
        #   Sales tax amount for this line item.
        #   @return [Integer]
        required :sales_tax_amount, Integer

        # @!attribute [rw] sales_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the sales tax assessed.
        #   @return [String]
        required :sales_tax_currency, String

        # @!attribute [rw] sales_tax_rate
        #   Sales tax rate for this line item.
        #   @return [String]
        required :sales_tax_rate, String

        # @!attribute [rw] total_amount
        #   Total amount of all line items.
        #   @return [Integer]
        required :total_amount, Integer

        # @!attribute [rw] total_amount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total amount.
        #   @return [String]
        required :total_amount_currency, String

        # @!attribute [rw] unit_cost
        #   Cost of line item per unit of measure, in major units.
        #   @return [String]
        required :unit_cost, String

        # @!attribute [rw] unit_cost_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the unit cost.
        #   @return [String]
        required :unit_cost_currency, String

        # @!attribute [rw] unit_of_measure_code
        #   Code indicating unit of measure (gallons, etc.).
        #   @return [String]
        required :unit_of_measure_code, String

        # Indicates the type of line item.
        class DetailIndicator < Increase::Enum
          # Normal
          NORMAL = :normal

          # Credit
          CREDIT = :credit

          # Purchase
          PAYMENT = :payment
        end

        # Indicates how the merchant applied the discount for this specific line item.
        class DiscountTreatmentCode < Increase::Enum
          # No line item level discount provided
          NO_LINE_ITEM_LEVEL_DISCOUNT_PROVIDED = :no_line_item_level_discount_provided

          # Tax calculated on post discount line item total
          TAX_CALCULATED_ON_POST_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_post_discount_line_item_total

          # Tax calculated on pre discount line item total
          TAX_CALCULATED_ON_PRE_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_pre_discount_line_item_total
        end
      end

      # A constant representing the object's type. For this resource it will always be `card_purchase_supplement`.
      class Type < Increase::Enum
        CARD_PURCHASE_SUPPLEMENT = :card_purchase_supplement
      end
    end
  end
end
