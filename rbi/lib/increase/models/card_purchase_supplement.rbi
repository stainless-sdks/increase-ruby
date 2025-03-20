# typed: strong

module Increase
  module Models
    class CardPurchaseSupplement < Increase::BaseModel
      # The Card Purchase Supplement identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The ID of the Card Payment this transaction belongs to.
      sig { returns(T.nilable(String)) }
      def card_payment_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def card_payment_id=(_)
      end

      # Invoice-level information about the payment.
      sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice)) }
      def invoice
      end

      sig do
        params(_: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice))
          .returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice))
      end
      def invoice=(_)
      end

      # Line item information, such as individual products purchased.
      sig { returns(T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem])) }
      def line_items
      end

      sig do
        params(_: T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]))
          .returns(T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]))
      end
      def line_items=(_)
      end

      # The ID of the transaction.
      sig { returns(String) }
      def transaction_id
      end

      sig { params(_: String).returns(String) }
      def transaction_id=(_)
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card_purchase_supplement`.
      sig { returns(Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol)
          .returns(Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol)
      end
      def type=(_)
      end

      # Additional information about a card purchase (e.g., settlement or refund), such
      #   as level 3 line item data.
      sig do
        params(
          id: String,
          card_payment_id: T.nilable(String),
          invoice: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice),
          line_items: T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]),
          transaction_id: String,
          type: Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, card_payment_id:, invoice:, line_items:, transaction_id:, type:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              card_payment_id: T.nilable(String),
              invoice: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice),
              line_items: T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]),
              transaction_id: String,
              type: Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      class Invoice < Increase::BaseModel
        # Discount given to cardholder.
        sig { returns(T.nilable(Integer)) }
        def discount_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        sig { returns(T.nilable(String)) }
        def discount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def discount_currency=(_)
        end

        # Indicates how the merchant applied the discount.
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol)) }
        def discount_treatment_code
        end

        sig do
          params(
            _: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol)
          )
            .returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol))
        end
        def discount_treatment_code=(_)
        end

        # Amount of duty taxes.
        sig { returns(T.nilable(Integer)) }
        def duty_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def duty_tax_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the duty tax.
        sig { returns(T.nilable(String)) }
        def duty_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def duty_tax_currency=(_)
        end

        # Date the order was taken.
        sig { returns(T.nilable(Date)) }
        def order_date
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def order_date=(_)
        end

        # The shipping cost.
        sig { returns(T.nilable(Integer)) }
        def shipping_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def shipping_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping
        #   cost.
        sig { returns(T.nilable(String)) }
        def shipping_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_currency=(_)
        end

        # Country code of the shipping destination.
        sig { returns(T.nilable(String)) }
        def shipping_destination_country_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_destination_country_code=(_)
        end

        # Postal code of the shipping destination.
        sig { returns(T.nilable(String)) }
        def shipping_destination_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_destination_postal_code=(_)
        end

        # Postal code of the location being shipped from.
        sig { returns(T.nilable(String)) }
        def shipping_source_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_source_postal_code=(_)
        end

        # Taxes paid for freight and shipping.
        sig { returns(T.nilable(Integer)) }
        def shipping_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def shipping_tax_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the shipping
        #   tax.
        sig { returns(T.nilable(String)) }
        def shipping_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_tax_currency=(_)
        end

        # Tax rate for freight and shipping.
        sig { returns(T.nilable(String)) }
        def shipping_tax_rate
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_tax_rate=(_)
        end

        # Indicates how the merchant applied taxes.
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol)) }
        def tax_treatments
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol))
            .returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol))
        end
        def tax_treatments=(_)
        end

        # Value added tax invoice reference number.
        sig { returns(T.nilable(String)) }
        def unique_value_added_tax_invoice_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unique_value_added_tax_invoice_reference=(_)
        end

        # Invoice-level information about the payment.
        sig do
          params(
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol),
            duty_tax_amount: T.nilable(Integer),
            duty_tax_currency: T.nilable(String),
            order_date: T.nilable(Date),
            shipping_amount: T.nilable(Integer),
            shipping_currency: T.nilable(String),
            shipping_destination_country_code: T.nilable(String),
            shipping_destination_postal_code: T.nilable(String),
            shipping_source_postal_code: T.nilable(String),
            shipping_tax_amount: T.nilable(Integer),
            shipping_tax_currency: T.nilable(String),
            shipping_tax_rate: T.nilable(String),
            tax_treatments: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol),
            unique_value_added_tax_invoice_reference: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          discount_amount:,
          discount_currency:,
          discount_treatment_code:,
          duty_tax_amount:,
          duty_tax_currency:,
          order_date:,
          shipping_amount:,
          shipping_currency:,
          shipping_destination_country_code:,
          shipping_destination_postal_code:,
          shipping_source_postal_code:,
          shipping_tax_amount:,
          shipping_tax_currency:,
          shipping_tax_rate:,
          tax_treatments:,
          unique_value_added_tax_invoice_reference:
        )
        end

        sig do
          override
            .returns(
              {
                discount_amount: T.nilable(Integer),
                discount_currency: T.nilable(String),
                discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol),
                duty_tax_amount: T.nilable(Integer),
                duty_tax_currency: T.nilable(String),
                order_date: T.nilable(Date),
                shipping_amount: T.nilable(Integer),
                shipping_currency: T.nilable(String),
                shipping_destination_country_code: T.nilable(String),
                shipping_destination_postal_code: T.nilable(String),
                shipping_source_postal_code: T.nilable(String),
                shipping_tax_amount: T.nilable(Integer),
                shipping_tax_currency: T.nilable(String),
                shipping_tax_rate: T.nilable(String),
                tax_treatments: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol),
                unique_value_added_tax_invoice_reference: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # Indicates how the merchant applied the discount.
        module DiscountTreatmentCode
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol) }

          # No invoice level discount provided
          NO_INVOICE_LEVEL_DISCOUNT_PROVIDED =
            T.let(
              :no_invoice_level_discount_provided,
              Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol
            )

          # Tax calculated on post discount invoice total
          TAX_CALCULATED_ON_POST_DISCOUNT_INVOICE_TOTAL =
            T.let(
              :tax_calculated_on_post_discount_invoice_total,
              Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol
            )

          # Tax calculated on pre discount invoice total
          TAX_CALCULATED_ON_PRE_DISCOUNT_INVOICE_TOTAL =
            T.let(
              :tax_calculated_on_pre_discount_invoice_total,
              Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol
            )
        end

        # Indicates how the merchant applied taxes.
        module TaxTreatments
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol) }

          # No tax applies
          NO_TAX_APPLIES =
            T.let(:no_tax_applies, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol)

          # Net price line item level
          NET_PRICE_LINE_ITEM_LEVEL =
            T.let(
              :net_price_line_item_level,
              Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol
            )

          # Net price invoice level
          NET_PRICE_INVOICE_LEVEL =
            T.let(
              :net_price_invoice_level,
              Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol
            )

          # Gross price line item level
          GROSS_PRICE_LINE_ITEM_LEVEL =
            T.let(
              :gross_price_line_item_level,
              Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol
            )

          # Gross price invoice level
          GROSS_PRICE_INVOICE_LEVEL =
            T.let(
              :gross_price_invoice_level,
              Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol
            )
        end
      end

      class LineItem < Increase::BaseModel
        # The Card Purchase Supplement Line Item identifier.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Indicates the type of line item.
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)) }
        def detail_indicator
        end

        sig do
          params(_: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol))
            .returns(T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol))
        end
        def detail_indicator=(_)
        end

        # Discount amount for this specific line item.
        sig { returns(T.nilable(Integer)) }
        def discount_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the discount.
        sig { returns(T.nilable(String)) }
        def discount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def discount_currency=(_)
        end

        # Indicates how the merchant applied the discount for this specific line item.
        sig do
          returns(
            T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol)
          )
        end
        def discount_treatment_code
        end

        sig do
          params(
            _: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol)
          )
            .returns(
              T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol)
            )
        end
        def discount_treatment_code=(_)
        end

        # Code used to categorize the purchase item.
        sig { returns(T.nilable(String)) }
        def item_commodity_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_commodity_code=(_)
        end

        # Description of the purchase item.
        sig { returns(T.nilable(String)) }
        def item_descriptor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_descriptor=(_)
        end

        # The number of units of the product being purchased.
        sig { returns(T.nilable(String)) }
        def item_quantity
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_quantity=(_)
        end

        # Code used to categorize the product being purchased.
        sig { returns(T.nilable(String)) }
        def product_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def product_code=(_)
        end

        # Sales tax amount for this line item.
        sig { returns(T.nilable(Integer)) }
        def sales_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def sales_tax_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the sales tax
        #   assessed.
        sig { returns(T.nilable(String)) }
        def sales_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sales_tax_currency=(_)
        end

        # Sales tax rate for this line item.
        sig { returns(T.nilable(String)) }
        def sales_tax_rate
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sales_tax_rate=(_)
        end

        # Total amount of all line items.
        sig { returns(T.nilable(Integer)) }
        def total_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def total_amount=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the total
        #   amount.
        sig { returns(T.nilable(String)) }
        def total_amount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def total_amount_currency=(_)
        end

        # Cost of line item per unit of measure, in major units.
        sig { returns(T.nilable(String)) }
        def unit_cost
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_cost=(_)
        end

        # The [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) code for the unit cost.
        sig { returns(T.nilable(String)) }
        def unit_cost_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_cost_currency=(_)
        end

        # Code indicating unit of measure (gallons, etc.).
        sig { returns(T.nilable(String)) }
        def unit_of_measure_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_of_measure_code=(_)
        end

        sig do
          params(
            id: String,
            detail_indicator: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol),
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol),
            item_commodity_code: T.nilable(String),
            item_descriptor: T.nilable(String),
            item_quantity: T.nilable(String),
            product_code: T.nilable(String),
            sales_tax_amount: T.nilable(Integer),
            sales_tax_currency: T.nilable(String),
            sales_tax_rate: T.nilable(String),
            total_amount: T.nilable(Integer),
            total_amount_currency: T.nilable(String),
            unit_cost: T.nilable(String),
            unit_cost_currency: T.nilable(String),
            unit_of_measure_code: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          detail_indicator:,
          discount_amount:,
          discount_currency:,
          discount_treatment_code:,
          item_commodity_code:,
          item_descriptor:,
          item_quantity:,
          product_code:,
          sales_tax_amount:,
          sales_tax_currency:,
          sales_tax_rate:,
          total_amount:,
          total_amount_currency:,
          unit_cost:,
          unit_cost_currency:,
          unit_of_measure_code:
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                detail_indicator: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol),
                discount_amount: T.nilable(Integer),
                discount_currency: T.nilable(String),
                discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol),
                item_commodity_code: T.nilable(String),
                item_descriptor: T.nilable(String),
                item_quantity: T.nilable(String),
                product_code: T.nilable(String),
                sales_tax_amount: T.nilable(Integer),
                sales_tax_currency: T.nilable(String),
                sales_tax_rate: T.nilable(String),
                total_amount: T.nilable(Integer),
                total_amount_currency: T.nilable(String),
                unit_cost: T.nilable(String),
                unit_cost_currency: T.nilable(String),
                unit_of_measure_code: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # Indicates the type of line item.
        module DetailIndicator
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol) }

          # Normal
          NORMAL =
            T.let(:normal, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)

          # Credit
          CREDIT =
            T.let(:credit, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)

          # Purchase
          PAYMENT =
            T.let(:payment, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)
        end

        # Indicates how the merchant applied the discount for this specific line item.
        module DiscountTreatmentCode
          extend Increase::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol) }

          # No line item level discount provided
          NO_LINE_ITEM_LEVEL_DISCOUNT_PROVIDED =
            T.let(
              :no_line_item_level_discount_provided,
              Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol
            )

          # Tax calculated on post discount line item total
          TAX_CALCULATED_ON_POST_DISCOUNT_LINE_ITEM_TOTAL =
            T.let(
              :tax_calculated_on_post_discount_line_item_total,
              Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol
            )

          # Tax calculated on pre discount line item total
          TAX_CALCULATED_ON_PRE_DISCOUNT_LINE_ITEM_TOTAL =
            T.let(
              :tax_calculated_on_pre_discount_line_item_total,
              Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol
            )
        end
      end

      # A constant representing the object's type. For this resource it will always be
      #   `card_purchase_supplement`.
      module Type
        extend Increase::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol) }

        CARD_PURCHASE_SUPPLEMENT =
          T.let(:card_purchase_supplement, Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol)
      end
    end
  end
end
