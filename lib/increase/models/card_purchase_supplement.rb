# frozen_string_literal: true

module Increase
  module Models
    # @example
    # ```ruby
    # card_purchase_supplement => {
    #   id: String,
    #   card_payment_id: String,
    #   invoice: Increase::Models::CardPurchaseSupplement::Invoice,
    #   line_items: -> { Increase::ArrayOf[Increase::Models::CardPurchaseSupplement::LineItem] === _1 },
    #   transaction_id: String
    # }
    # ```
    class CardPurchaseSupplement < Increase::BaseModel
      # @!attribute id
      #   The Card Purchase Supplement identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute card_payment_id
      #   The ID of the Card Payment this transaction belongs to.
      #
      #   @return [String, nil]
      required :card_payment_id, String

      # @!attribute invoice
      #   Invoice-level information about the payment.
      #
      #   @return [Increase::Models::CardPurchaseSupplement::Invoice, nil]
      required :invoice, -> { Increase::Models::CardPurchaseSupplement::Invoice }

      # @!attribute line_items
      #   Line item information, such as individual products purchased.
      #
      #   @return [Array<Increase::Models::CardPurchaseSupplement::LineItem>, nil]
      required :line_items, -> { Increase::ArrayOf[Increase::Models::CardPurchaseSupplement::LineItem] }

      # @!attribute transaction_id
      #   The ID of the transaction.
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute type
      #   A constant representing the object's type. For this resource it will always be `card_purchase_supplement`.
      #
      #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Type]
      required :type, enum: -> { Increase::Models::CardPurchaseSupplement::Type }

      # @!parse
      #   # Additional information about a card purchase (e.g., settlement or refund), such
      #   #   as level 3 line item data.
      #   #
      #   # @param id [String] The Card Purchase Supplement identifier.
      #   #
      #   # @param card_payment_id [String, nil] The ID of the Card Payment this transaction belongs to.
      #   #
      #   # @param invoice [Increase::Models::CardPurchaseSupplement::Invoice, nil] Invoice-level information about the payment.
      #   #
      #   # @param line_items [Array<Increase::Models::CardPurchaseSupplement::LineItem>, nil] Line item information, such as individual products purchased.
      #   #
      #   # @param transaction_id [String] The ID of the transaction.
      #   #
      #   # @param type [String] A constant representing the object's type. For this resource it will always be
      #   #   `card_purchase_supplement`.
      #   #
      #   def initialize(id:, card_payment_id:, invoice:, line_items:, transaction_id:, type:, **) = super

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      # ```ruby
      # invoice => {
      #   discount_amount: Integer,
      #   discount_currency: String,
      #   discount_treatment_code: enum: Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode,
      #   duty_tax_amount: Integer,
      #   duty_tax_currency: String,
      #   **_
      # }
      # ```
      class Invoice < Increase::BaseModel
        # @!attribute discount_amount
        #   Discount given to cardholder.
        #
        #   @return [Integer, nil]
        required :discount_amount, Integer

        # @!attribute discount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #
        #   @return [String, nil]
        required :discount_currency, String

        # @!attribute discount_treatment_code
        #   Indicates how the merchant applied the discount.
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode, nil]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode }

        # @!attribute duty_tax_amount
        #   Amount of duty taxes.
        #
        #   @return [Integer, nil]
        required :duty_tax_amount, Integer

        # @!attribute duty_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the duty tax.
        #
        #   @return [String, nil]
        required :duty_tax_currency, String

        # @!attribute order_date
        #   Date the order was taken.
        #
        #   @return [Date, nil]
        required :order_date, Date

        # @!attribute shipping_amount
        #   The shipping cost.
        #
        #   @return [Integer, nil]
        required :shipping_amount, Integer

        # @!attribute shipping_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping cost.
        #
        #   @return [String, nil]
        required :shipping_currency, String

        # @!attribute shipping_destination_country_code
        #   Country code of the shipping destination.
        #
        #   @return [String, nil]
        required :shipping_destination_country_code, String

        # @!attribute shipping_destination_postal_code
        #   Postal code of the shipping destination.
        #
        #   @return [String, nil]
        required :shipping_destination_postal_code, String

        # @!attribute shipping_source_postal_code
        #   Postal code of the location being shipped from.
        #
        #   @return [String, nil]
        required :shipping_source_postal_code, String

        # @!attribute shipping_tax_amount
        #   Taxes paid for freight and shipping.
        #
        #   @return [Integer, nil]
        required :shipping_tax_amount, Integer

        # @!attribute shipping_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping tax.
        #
        #   @return [String, nil]
        required :shipping_tax_currency, String

        # @!attribute shipping_tax_rate
        #   Tax rate for freight and shipping.
        #
        #   @return [String, nil]
        required :shipping_tax_rate, String

        # @!attribute tax_treatments
        #   Indicates how the merchant applied taxes.
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments, nil]
        required :tax_treatments,
                 enum: -> {
                   Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments
                 }

        # @!attribute unique_value_added_tax_invoice_reference
        #   Value added tax invoice reference number.
        #
        #   @return [String, nil]
        required :unique_value_added_tax_invoice_reference, String

        # @!parse
        #   # Invoice-level information about the payment.
        #   #
        #   # @param discount_amount [Integer, nil] Discount given to cardholder.
        #   #
        #   # @param discount_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #   #
        #   # @param discount_treatment_code [String, nil] Indicates how the merchant applied the discount.
        #   #
        #   # @param duty_tax_amount [Integer, nil] Amount of duty taxes.
        #   #
        #   # @param duty_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the duty tax.
        #   #
        #   # @param order_date [String, nil] Date the order was taken.
        #   #
        #   # @param shipping_amount [Integer, nil] The shipping cost.
        #   #
        #   # @param shipping_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping
        #   #   cost.
        #   #
        #   # @param shipping_destination_country_code [String, nil] Country code of the shipping destination.
        #   #
        #   # @param shipping_destination_postal_code [String, nil] Postal code of the shipping destination.
        #   #
        #   # @param shipping_source_postal_code [String, nil] Postal code of the location being shipped from.
        #   #
        #   # @param shipping_tax_amount [Integer, nil] Taxes paid for freight and shipping.
        #   #
        #   # @param shipping_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping
        #   #   tax.
        #   #
        #   # @param shipping_tax_rate [String, nil] Tax rate for freight and shipping.
        #   #
        #   # @param tax_treatments [String, nil] Indicates how the merchant applied taxes.
        #   #
        #   # @param unique_value_added_tax_invoice_reference [String, nil] Value added tax invoice reference number.
        #   #
        #   def initialize(
        #     discount_amount:,
        #     discount_currency:,
        #     discount_treatment_code:,
        #     duty_tax_amount:,
        #     duty_tax_currency:,
        #     order_date:,
        #     shipping_amount:,
        #     shipping_currency:,
        #     shipping_destination_country_code:,
        #     shipping_destination_postal_code:,
        #     shipping_source_postal_code:,
        #     shipping_tax_amount:,
        #     shipping_tax_currency:,
        #     shipping_tax_rate:,
        #     tax_treatments:,
        #     unique_value_added_tax_invoice_reference:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Indicates how the merchant applied the discount.
        #
        # @example
        # ```ruby
        # case discount_treatment_code
        # in :no_invoice_level_discount_provided
        #   # ...
        # in :tax_calculated_on_post_discount_invoice_total
        #   # ...
        # in :tax_calculated_on_pre_discount_invoice_total
        #   # ...
        # end
        # ```
        class DiscountTreatmentCode < Increase::Enum
          # No invoice level discount provided
          NO_INVOICE_LEVEL_DISCOUNT_PROVIDED = :no_invoice_level_discount_provided

          # Tax calculated on post discount invoice total
          TAX_CALCULATED_ON_POST_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_post_discount_invoice_total

          # Tax calculated on pre discount invoice total
          TAX_CALCULATED_ON_PRE_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_pre_discount_invoice_total

          finalize!
        end

        # Indicates how the merchant applied taxes.
        #
        # @example
        # ```ruby
        # case tax_treatments
        # in :no_tax_applies
        #   # ...
        # in :net_price_line_item_level
        #   # ...
        # in :net_price_invoice_level
        #   # ...
        # in :gross_price_line_item_level
        #   # ...
        # in :gross_price_invoice_level
        #   # ...
        # end
        # ```
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

          finalize!
        end
      end

      # @example
      # ```ruby
      # line_item => {
      #   id: String,
      #   detail_indicator: enum: Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator,
      #   discount_amount: Integer,
      #   discount_currency: String,
      #   discount_treatment_code: enum: Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode,
      #   **_
      # }
      # ```
      class LineItem < Increase::BaseModel
        # @!attribute id
        #   The Card Purchase Supplement Line Item identifier.
        #
        #   @return [String]
        required :id, String

        # @!attribute detail_indicator
        #   Indicates the type of line item.
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator, nil]
        required :detail_indicator,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator }

        # @!attribute discount_amount
        #   Discount amount for this specific line item.
        #
        #   @return [Integer, nil]
        required :discount_amount, Integer

        # @!attribute discount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #
        #   @return [String, nil]
        required :discount_currency, String

        # @!attribute discount_treatment_code
        #   Indicates how the merchant applied the discount for this specific line item.
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode, nil]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode }

        # @!attribute item_commodity_code
        #   Code used to categorize the purchase item.
        #
        #   @return [String, nil]
        required :item_commodity_code, String

        # @!attribute item_descriptor
        #   Description of the purchase item.
        #
        #   @return [String, nil]
        required :item_descriptor, String

        # @!attribute item_quantity
        #   The number of units of the product being purchased.
        #
        #   @return [String, nil]
        required :item_quantity, String

        # @!attribute product_code
        #   Code used to categorize the product being purchased.
        #
        #   @return [String, nil]
        required :product_code, String

        # @!attribute sales_tax_amount
        #   Sales tax amount for this line item.
        #
        #   @return [Integer, nil]
        required :sales_tax_amount, Integer

        # @!attribute sales_tax_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the sales tax assessed.
        #
        #   @return [String, nil]
        required :sales_tax_currency, String

        # @!attribute sales_tax_rate
        #   Sales tax rate for this line item.
        #
        #   @return [String, nil]
        required :sales_tax_rate, String

        # @!attribute total_amount
        #   Total amount of all line items.
        #
        #   @return [Integer, nil]
        required :total_amount, Integer

        # @!attribute total_amount_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total amount.
        #
        #   @return [String, nil]
        required :total_amount_currency, String

        # @!attribute unit_cost
        #   Cost of line item per unit of measure, in major units.
        #
        #   @return [String, nil]
        required :unit_cost, String

        # @!attribute unit_cost_currency
        #   The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the unit cost.
        #
        #   @return [String, nil]
        required :unit_cost_currency, String

        # @!attribute unit_of_measure_code
        #   Code indicating unit of measure (gallons, etc.).
        #
        #   @return [String, nil]
        required :unit_of_measure_code, String

        # @!parse
        #   # @param id [String] The Card Purchase Supplement Line Item identifier.
        #   #
        #   # @param detail_indicator [String, nil] Indicates the type of line item.
        #   #
        #   # @param discount_amount [Integer, nil] Discount amount for this specific line item.
        #   #
        #   # @param discount_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        #   #
        #   # @param discount_treatment_code [String, nil] Indicates how the merchant applied the discount for this specific line item.
        #   #
        #   # @param item_commodity_code [String, nil] Code used to categorize the purchase item.
        #   #
        #   # @param item_descriptor [String, nil] Description of the purchase item.
        #   #
        #   # @param item_quantity [String, nil] The number of units of the product being purchased.
        #   #
        #   # @param product_code [String, nil] Code used to categorize the product being purchased.
        #   #
        #   # @param sales_tax_amount [Integer, nil] Sales tax amount for this line item.
        #   #
        #   # @param sales_tax_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the sales tax
        #   #   assessed.
        #   #
        #   # @param sales_tax_rate [String, nil] Sales tax rate for this line item.
        #   #
        #   # @param total_amount [Integer, nil] Total amount of all line items.
        #   #
        #   # @param total_amount_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total
        #   #   amount.
        #   #
        #   # @param unit_cost [String, nil] Cost of line item per unit of measure, in major units.
        #   #
        #   # @param unit_cost_currency [String, nil] The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the unit cost.
        #   #
        #   # @param unit_of_measure_code [String, nil] Code indicating unit of measure (gallons, etc.).
        #   #
        #   def initialize(
        #     id:,
        #     detail_indicator:,
        #     discount_amount:,
        #     discount_currency:,
        #     discount_treatment_code:,
        #     item_commodity_code:,
        #     item_descriptor:,
        #     item_quantity:,
        #     product_code:,
        #     sales_tax_amount:,
        #     sales_tax_currency:,
        #     sales_tax_rate:,
        #     total_amount:,
        #     total_amount_currency:,
        #     unit_cost:,
        #     unit_cost_currency:,
        #     unit_of_measure_code:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Indicates the type of line item.
        #
        # @example
        # ```ruby
        # case detail_indicator
        # in :normal
        #   # ...
        # in :credit
        #   # ...
        # in :payment
        #   # ...
        # end
        # ```
        class DetailIndicator < Increase::Enum
          # Normal
          NORMAL = :normal

          # Credit
          CREDIT = :credit

          # Purchase
          PAYMENT = :payment

          finalize!
        end

        # Indicates how the merchant applied the discount for this specific line item.
        #
        # @example
        # ```ruby
        # case discount_treatment_code
        # in :no_line_item_level_discount_provided
        #   # ...
        # in :tax_calculated_on_post_discount_line_item_total
        #   # ...
        # in :tax_calculated_on_pre_discount_line_item_total
        #   # ...
        # end
        # ```
        class DiscountTreatmentCode < Increase::Enum
          # No line item level discount provided
          NO_LINE_ITEM_LEVEL_DISCOUNT_PROVIDED = :no_line_item_level_discount_provided

          # Tax calculated on post discount line item total
          TAX_CALCULATED_ON_POST_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_post_discount_line_item_total

          # Tax calculated on pre discount line item total
          TAX_CALCULATED_ON_PRE_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_pre_discount_line_item_total

          finalize!
        end
      end

      # A constant representing the object's type. For this resource it will always be `card_purchase_supplement`.
      #
      # @example
      # ```ruby
      # case type
      # in :card_purchase_supplement
      #   # ...
      # end
      # ```
      class Type < Increase::Enum
        CARD_PURCHASE_SUPPLEMENT = :card_purchase_supplement

        finalize!
      end
    end
  end
end
