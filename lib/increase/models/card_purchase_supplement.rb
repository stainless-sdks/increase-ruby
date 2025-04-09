# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::CardPurchaseSupplements#retrieve
    class CardPurchaseSupplement < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/card_purchase_supplement/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute card_payment_id
      #   #/components/schemas/card_purchase_supplement/properties/card_payment_id
      #
      #   @return [String, nil]
      required :card_payment_id, String, nil?: true

      # @!attribute invoice
      #   #/components/schemas/card_purchase_supplement/properties/invoice
      #
      #   @return [Increase::Models::CardPurchaseSupplement::Invoice, nil]
      required :invoice, -> { Increase::Models::CardPurchaseSupplement::Invoice }, nil?: true

      # @!attribute line_items
      #   #/components/schemas/card_purchase_supplement/properties/line_items
      #
      #   @return [Array<Increase::Models::CardPurchaseSupplement::LineItem>, nil]
      required :line_items,
               -> { Increase::Internal::Type::ArrayOf[Increase::Models::CardPurchaseSupplement::LineItem] },
               nil?: true

      # @!attribute transaction_id
      #   #/components/schemas/card_purchase_supplement/properties/transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute type
      #   #/components/schemas/card_purchase_supplement/properties/type
      #
      #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Type]
      required :type, enum: -> { Increase::Models::CardPurchaseSupplement::Type }

      # @!parse
      #   # #/components/schemas/card_purchase_supplement
      #   #
      #   # @param id [String]
      #   # @param card_payment_id [String, nil]
      #   # @param invoice [Increase::Models::CardPurchaseSupplement::Invoice, nil]
      #   # @param line_items [Array<Increase::Models::CardPurchaseSupplement::LineItem>, nil]
      #   # @param transaction_id [String]
      #   # @param type [Symbol, Increase::Models::CardPurchaseSupplement::Type]
      #   #
      #   def initialize(id:, card_payment_id:, invoice:, line_items:, transaction_id:, type:, **) = super

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::CardPurchaseSupplement#invoice
      class Invoice < Increase::Internal::Type::BaseModel
        # @!attribute discount_amount
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_amount
        #
        #   @return [Integer, nil]
        required :discount_amount, Integer, nil?: true

        # @!attribute discount_currency
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_currency
        #
        #   @return [String, nil]
        required :discount_currency, String, nil?: true

        # @!attribute discount_treatment_code
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_treatment_code
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode, nil]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode },
                 nil?: true

        # @!attribute duty_tax_amount
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/duty_tax_amount
        #
        #   @return [Integer, nil]
        required :duty_tax_amount, Integer, nil?: true

        # @!attribute duty_tax_currency
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/duty_tax_currency
        #
        #   @return [String, nil]
        required :duty_tax_currency, String, nil?: true

        # @!attribute order_date
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/order_date
        #
        #   @return [Date, nil]
        required :order_date, Date, nil?: true

        # @!attribute shipping_amount
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_amount
        #
        #   @return [Integer, nil]
        required :shipping_amount, Integer, nil?: true

        # @!attribute shipping_currency
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_currency
        #
        #   @return [String, nil]
        required :shipping_currency, String, nil?: true

        # @!attribute shipping_destination_country_code
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_destination_country_code
        #
        #   @return [String, nil]
        required :shipping_destination_country_code, String, nil?: true

        # @!attribute shipping_destination_postal_code
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_destination_postal_code
        #
        #   @return [String, nil]
        required :shipping_destination_postal_code, String, nil?: true

        # @!attribute shipping_source_postal_code
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_source_postal_code
        #
        #   @return [String, nil]
        required :shipping_source_postal_code, String, nil?: true

        # @!attribute shipping_tax_amount
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_amount
        #
        #   @return [Integer, nil]
        required :shipping_tax_amount, Integer, nil?: true

        # @!attribute shipping_tax_currency
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_currency
        #
        #   @return [String, nil]
        required :shipping_tax_currency, String, nil?: true

        # @!attribute shipping_tax_rate
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_rate
        #
        #   @return [String, nil]
        required :shipping_tax_rate, String, nil?: true

        # @!attribute tax_treatments
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/tax_treatments
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments, nil]
        required :tax_treatments,
                 enum: -> { Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments },
                 nil?: true

        # @!attribute unique_value_added_tax_invoice_reference
        #   #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/unique_value_added_tax_invoice_reference
        #
        #   @return [String, nil]
        required :unique_value_added_tax_invoice_reference, String, nil?: true

        # @!parse
        #   # #/components/schemas/card_purchase_supplement/properties/invoice
        #   #
        #   # @param discount_amount [Integer, nil]
        #   # @param discount_currency [String, nil]
        #   # @param discount_treatment_code [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode, nil]
        #   # @param duty_tax_amount [Integer, nil]
        #   # @param duty_tax_currency [String, nil]
        #   # @param order_date [Date, nil]
        #   # @param shipping_amount [Integer, nil]
        #   # @param shipping_currency [String, nil]
        #   # @param shipping_destination_country_code [String, nil]
        #   # @param shipping_destination_postal_code [String, nil]
        #   # @param shipping_source_postal_code [String, nil]
        #   # @param shipping_tax_amount [Integer, nil]
        #   # @param shipping_tax_currency [String, nil]
        #   # @param shipping_tax_rate [String, nil]
        #   # @param tax_treatments [Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments, nil]
        #   # @param unique_value_added_tax_invoice_reference [String, nil]
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_treatment_code
        #
        # @see Increase::Models::CardPurchaseSupplement::Invoice#discount_treatment_code
        module DiscountTreatmentCode
          extend Increase::Internal::Type::Enum

          # No invoice level discount provided
          NO_INVOICE_LEVEL_DISCOUNT_PROVIDED = :no_invoice_level_discount_provided

          # Tax calculated on post discount invoice total
          TAX_CALCULATED_ON_POST_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_post_discount_invoice_total

          # Tax calculated on pre discount invoice total
          TAX_CALCULATED_ON_PRE_DISCOUNT_INVOICE_TOTAL = :tax_calculated_on_pre_discount_invoice_total

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/tax_treatments
        #
        # @see Increase::Models::CardPurchaseSupplement::Invoice#tax_treatments
        module TaxTreatments
          extend Increase::Internal::Type::Enum

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

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class LineItem < Increase::Internal::Type::BaseModel
        # @!attribute id
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/id
        #
        #   @return [String]
        required :id, String

        # @!attribute detail_indicator
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/detail_indicator
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator, nil]
        required :detail_indicator,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator },
                 nil?: true

        # @!attribute discount_amount
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_amount
        #
        #   @return [Integer, nil]
        required :discount_amount, Integer, nil?: true

        # @!attribute discount_currency
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_currency
        #
        #   @return [String, nil]
        required :discount_currency, String, nil?: true

        # @!attribute discount_treatment_code
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_treatment_code
        #
        #   @return [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode, nil]
        required :discount_treatment_code,
                 enum: -> { Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode },
                 nil?: true

        # @!attribute item_commodity_code
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_commodity_code
        #
        #   @return [String, nil]
        required :item_commodity_code, String, nil?: true

        # @!attribute item_descriptor
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_descriptor
        #
        #   @return [String, nil]
        required :item_descriptor, String, nil?: true

        # @!attribute item_quantity
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_quantity
        #
        #   @return [String, nil]
        required :item_quantity, String, nil?: true

        # @!attribute product_code
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/product_code
        #
        #   @return [String, nil]
        required :product_code, String, nil?: true

        # @!attribute sales_tax_amount
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_amount
        #
        #   @return [Integer, nil]
        required :sales_tax_amount, Integer, nil?: true

        # @!attribute sales_tax_currency
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_currency
        #
        #   @return [String, nil]
        required :sales_tax_currency, String, nil?: true

        # @!attribute sales_tax_rate
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_rate
        #
        #   @return [String, nil]
        required :sales_tax_rate, String, nil?: true

        # @!attribute total_amount
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/total_amount
        #
        #   @return [Integer, nil]
        required :total_amount, Integer, nil?: true

        # @!attribute total_amount_currency
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/total_amount_currency
        #
        #   @return [String, nil]
        required :total_amount_currency, String, nil?: true

        # @!attribute unit_cost
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_cost
        #
        #   @return [String, nil]
        required :unit_cost, String, nil?: true

        # @!attribute unit_cost_currency
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_cost_currency
        #
        #   @return [String, nil]
        required :unit_cost_currency, String, nil?: true

        # @!attribute unit_of_measure_code
        #   #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_of_measure_code
        #
        #   @return [String, nil]
        required :unit_of_measure_code, String, nil?: true

        # @!parse
        #   # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items
        #   #
        #   # @param id [String]
        #   # @param detail_indicator [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator, nil]
        #   # @param discount_amount [Integer, nil]
        #   # @param discount_currency [String, nil]
        #   # @param discount_treatment_code [Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode, nil]
        #   # @param item_commodity_code [String, nil]
        #   # @param item_descriptor [String, nil]
        #   # @param item_quantity [String, nil]
        #   # @param product_code [String, nil]
        #   # @param sales_tax_amount [Integer, nil]
        #   # @param sales_tax_currency [String, nil]
        #   # @param sales_tax_rate [String, nil]
        #   # @param total_amount [Integer, nil]
        #   # @param total_amount_currency [String, nil]
        #   # @param unit_cost [String, nil]
        #   # @param unit_cost_currency [String, nil]
        #   # @param unit_of_measure_code [String, nil]
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

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/detail_indicator
        #
        # @see Increase::Models::CardPurchaseSupplement::LineItem#detail_indicator
        module DetailIndicator
          extend Increase::Internal::Type::Enum

          # Normal
          NORMAL = :normal

          # Credit
          CREDIT = :credit

          # Purchase
          PAYMENT = :payment

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_treatment_code
        #
        # @see Increase::Models::CardPurchaseSupplement::LineItem#discount_treatment_code
        module DiscountTreatmentCode
          extend Increase::Internal::Type::Enum

          # No line item level discount provided
          NO_LINE_ITEM_LEVEL_DISCOUNT_PROVIDED = :no_line_item_level_discount_provided

          # Tax calculated on post discount line item total
          TAX_CALCULATED_ON_POST_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_post_discount_line_item_total

          # Tax calculated on pre discount line item total
          TAX_CALCULATED_ON_PRE_DISCOUNT_LINE_ITEM_TOTAL = :tax_calculated_on_pre_discount_line_item_total

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      # #/components/schemas/card_purchase_supplement/properties/type
      #
      # @see Increase::Models::CardPurchaseSupplement#type
      module Type
        extend Increase::Internal::Type::Enum

        CARD_PURCHASE_SUPPLEMENT = :card_purchase_supplement

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
