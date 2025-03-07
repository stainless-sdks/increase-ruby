# typed: strong

module Increase
  module Models
    class CardPurchaseSupplement < Increase::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def card_payment_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def card_payment_id=(_)
      end

      sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice)) }
      def invoice
      end

      sig do
        params(_: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice))
          .returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice))
      end
      def invoice=(_)
      end

      sig { returns(T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem])) }
      def line_items
      end

      sig do
        params(_: T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]))
          .returns(T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]))
      end
      def line_items=(_)
      end

      sig { returns(String) }
      def transaction_id
      end

      sig { params(_: String).returns(String) }
      def transaction_id=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          card_payment_id: T.nilable(String),
          invoice: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice),
          line_items: T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem]),
          transaction_id: String,
          type: Symbol
        )
          .void
      end
      def initialize(id:, card_payment_id:, invoice:, line_items:, transaction_id:, type:)
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
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Invoice < Increase::BaseModel
        sig { returns(T.nilable(Integer)) }
        def discount_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def discount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def discount_currency=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def discount_treatment_code
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def discount_treatment_code=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def duty_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def duty_tax_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def duty_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def duty_tax_currency=(_)
        end

        sig { returns(T.nilable(Date)) }
        def order_date
        end

        sig { params(_: T.nilable(Date)).returns(T.nilable(Date)) }
        def order_date=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def shipping_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def shipping_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_destination_country_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_destination_country_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_destination_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_destination_postal_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_source_postal_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_source_postal_code=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def shipping_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def shipping_tax_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_tax_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def shipping_tax_rate
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_tax_rate=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def tax_treatments
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def tax_treatments=(_)
        end

        sig { returns(T.nilable(String)) }
        def unique_value_added_tax_invoice_reference
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unique_value_added_tax_invoice_reference=(_)
        end

        sig do
          params(
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Symbol),
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
            tax_treatments: T.nilable(Symbol),
            unique_value_added_tax_invoice_reference: T.nilable(String)
          )
            .void
        end
        def initialize(
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
                discount_treatment_code: T.nilable(Symbol),
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
                tax_treatments: T.nilable(Symbol),
                unique_value_added_tax_invoice_reference: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class DiscountTreatmentCode < Increase::Enum
          abstract!

          # No invoice level discount provided
          NO_INVOICE_LEVEL_DISCOUNT_PROVIDED = T.let(:no_invoice_level_discount_provided, T.nilable(Symbol))

          # Tax calculated on post discount invoice total
          TAX_CALCULATED_ON_POST_DISCOUNT_INVOICE_TOTAL = T.let(
            :tax_calculated_on_post_discount_invoice_total, T.nilable(Symbol)
          )

          # Tax calculated on pre discount invoice total
          TAX_CALCULATED_ON_PRE_DISCOUNT_INVOICE_TOTAL = T.let(
            :tax_calculated_on_pre_discount_invoice_total,
            T.nilable(Symbol)
          )

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class TaxTreatments < Increase::Enum
          abstract!

          # No tax applies
          NO_TAX_APPLIES = T.let(:no_tax_applies, T.nilable(Symbol))

          # Net price line item level
          NET_PRICE_LINE_ITEM_LEVEL = T.let(:net_price_line_item_level, T.nilable(Symbol))

          # Net price invoice level
          NET_PRICE_INVOICE_LEVEL = T.let(:net_price_invoice_level, T.nilable(Symbol))

          # Gross price line item level
          GROSS_PRICE_LINE_ITEM_LEVEL = T.let(:gross_price_line_item_level, T.nilable(Symbol))

          # Gross price invoice level
          GROSS_PRICE_INVOICE_LEVEL = T.let(:gross_price_invoice_level, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class LineItem < Increase::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def detail_indicator
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def detail_indicator=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def discount_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def discount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def discount_currency=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def discount_treatment_code
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def discount_treatment_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def item_commodity_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_commodity_code=(_)
        end

        sig { returns(T.nilable(String)) }
        def item_descriptor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_descriptor=(_)
        end

        sig { returns(T.nilable(String)) }
        def item_quantity
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def item_quantity=(_)
        end

        sig { returns(T.nilable(String)) }
        def product_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def product_code=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def sales_tax_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def sales_tax_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def sales_tax_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sales_tax_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def sales_tax_rate
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def sales_tax_rate=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def total_amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def total_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def total_amount_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def total_amount_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def unit_cost
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_cost=(_)
        end

        sig { returns(T.nilable(String)) }
        def unit_cost_currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_cost_currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def unit_of_measure_code
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def unit_of_measure_code=(_)
        end

        sig do
          params(
            id: String,
            detail_indicator: T.nilable(Symbol),
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Symbol),
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
            .void
        end
        def initialize(
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
                detail_indicator: T.nilable(Symbol),
                discount_amount: T.nilable(Integer),
                discount_currency: T.nilable(String),
                discount_treatment_code: T.nilable(Symbol),
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

        class DetailIndicator < Increase::Enum
          abstract!

          # Normal
          NORMAL = T.let(:normal, T.nilable(Symbol))

          # Credit
          CREDIT = T.let(:credit, T.nilable(Symbol))

          # Purchase
          PAYMENT = T.let(:payment, T.nilable(Symbol))

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class DiscountTreatmentCode < Increase::Enum
          abstract!

          # No line item level discount provided
          NO_LINE_ITEM_LEVEL_DISCOUNT_PROVIDED = T.let(
            :no_line_item_level_discount_provided,
            T.nilable(Symbol)
          )

          # Tax calculated on post discount line item total
          TAX_CALCULATED_ON_POST_DISCOUNT_LINE_ITEM_TOTAL = T.let(
            :tax_calculated_on_post_discount_line_item_total, T.nilable(Symbol)
          )

          # Tax calculated on pre discount line item total
          TAX_CALCULATED_ON_PRE_DISCOUNT_LINE_ITEM_TOTAL = T.let(
            :tax_calculated_on_pre_discount_line_item_total, T.nilable(Symbol)
          )

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Type < Increase::Enum
        abstract!

        CARD_PURCHASE_SUPPLEMENT = :card_purchase_supplement

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
