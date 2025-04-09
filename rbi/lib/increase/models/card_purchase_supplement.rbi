# typed: strong

module Increase
  module Models
    class CardPurchaseSupplement < Increase::Internal::Type::BaseModel
      # #/components/schemas/card_purchase_supplement/properties/id
      sig { returns(String) }
      attr_accessor :id

      # #/components/schemas/card_purchase_supplement/properties/card_payment_id
      sig { returns(T.nilable(String)) }
      attr_accessor :card_payment_id

      # #/components/schemas/card_purchase_supplement/properties/invoice
      sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice)) }
      attr_reader :invoice

      sig do
        params(
          invoice: T.nilable(T.any(Increase::Models::CardPurchaseSupplement::Invoice, Increase::Internal::AnyHash))
        )
          .void
      end
      attr_writer :invoice

      # #/components/schemas/card_purchase_supplement/properties/line_items
      sig { returns(T.nilable(T::Array[Increase::Models::CardPurchaseSupplement::LineItem])) }
      attr_accessor :line_items

      # #/components/schemas/card_purchase_supplement/properties/transaction_id
      sig { returns(String) }
      attr_accessor :transaction_id

      # #/components/schemas/card_purchase_supplement/properties/type
      sig { returns(Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol) }
      attr_accessor :type

      # #/components/schemas/card_purchase_supplement
      sig do
        params(
          id: String,
          card_payment_id: T.nilable(String),
          invoice: T.nilable(T.any(Increase::Models::CardPurchaseSupplement::Invoice, Increase::Internal::AnyHash)),
          line_items: T.nilable(
            T::Array[T.any(Increase::Models::CardPurchaseSupplement::LineItem, Increase::Internal::AnyHash)]
          ),
          transaction_id: String,
          type: Increase::Models::CardPurchaseSupplement::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, card_payment_id:, invoice:, line_items:, transaction_id:, type:); end

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
      def to_hash; end

      class Invoice < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_amount

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :discount_currency

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_treatment_code
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol)) }
        attr_accessor :discount_treatment_code

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/duty_tax_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :duty_tax_amount

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/duty_tax_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :duty_tax_currency

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/order_date
        sig { returns(T.nilable(Date)) }
        attr_accessor :order_date

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :shipping_amount

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_currency

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_destination_country_code
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_destination_country_code

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_destination_postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_destination_postal_code

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_source_postal_code
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_source_postal_code

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :shipping_tax_amount

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_tax_currency

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/shipping_tax_rate
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_tax_rate

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/tax_treatments
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol)) }
        attr_accessor :tax_treatments

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/unique_value_added_tax_invoice_reference
        sig { returns(T.nilable(String)) }
        attr_accessor :unique_value_added_tax_invoice_reference

        # #/components/schemas/card_purchase_supplement/properties/invoice
        sig do
          params(
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::OrSymbol),
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
            tax_treatments: T.nilable(Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::OrSymbol),
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
        ); end
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
        def to_hash; end

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/discount_treatment_code
        module DiscountTreatmentCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol
              )
            end

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

          sig do
            override
              .returns(T::Array[Increase::Models::CardPurchaseSupplement::Invoice::DiscountTreatmentCode::TaggedSymbol])
          end
          def self.values; end
        end

        # #/components/schemas/card_purchase_supplement/properties/invoice/anyOf/0/properties/tax_treatments
        module TaxTreatments
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol) }

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

          sig { override.returns(T::Array[Increase::Models::CardPurchaseSupplement::Invoice::TaxTreatments::TaggedSymbol]) }
          def self.values; end
        end
      end

      class LineItem < Increase::Internal::Type::BaseModel
        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/id
        sig { returns(String) }
        attr_accessor :id

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/detail_indicator
        sig { returns(T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)) }
        attr_accessor :detail_indicator

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_amount

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :discount_currency

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_treatment_code
        sig do
          returns(
            T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol)
          )
        end
        attr_accessor :discount_treatment_code

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_commodity_code
        sig { returns(T.nilable(String)) }
        attr_accessor :item_commodity_code

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_descriptor
        sig { returns(T.nilable(String)) }
        attr_accessor :item_descriptor

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/item_quantity
        sig { returns(T.nilable(String)) }
        attr_accessor :item_quantity

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/product_code
        sig { returns(T.nilable(String)) }
        attr_accessor :product_code

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :sales_tax_amount

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :sales_tax_currency

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/sales_tax_rate
        sig { returns(T.nilable(String)) }
        attr_accessor :sales_tax_rate

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/total_amount
        sig { returns(T.nilable(Integer)) }
        attr_accessor :total_amount

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/total_amount_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :total_amount_currency

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_cost
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_cost

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_cost_currency
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_cost_currency

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/unit_of_measure_code
        sig { returns(T.nilable(String)) }
        attr_accessor :unit_of_measure_code

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items
        sig do
          params(
            id: String,
            detail_indicator: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::OrSymbol),
            discount_amount: T.nilable(Integer),
            discount_currency: T.nilable(String),
            discount_treatment_code: T.nilable(Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::OrSymbol),
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
        ); end
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
        def to_hash; end

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/detail_indicator
        module DetailIndicator
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol) }

          # Normal
          NORMAL =
            T.let(:normal, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)

          # Credit
          CREDIT =
            T.let(:credit, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)

          # Purchase
          PAYMENT =
            T.let(:payment, Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol)

          sig do
            override
              .returns(T::Array[Increase::Models::CardPurchaseSupplement::LineItem::DetailIndicator::TaggedSymbol])
          end
          def self.values; end
        end

        # #/components/schemas/card_purchase_supplement/properties/line_items/anyOf/0/items/properties/discount_treatment_code
        module DiscountTreatmentCode
          extend Increase::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode) }
          OrSymbol =
            T.type_alias do
              T.any(
                Symbol,
                String,
                Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol
              )
            end

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

          sig do
            override
              .returns(T::Array[Increase::Models::CardPurchaseSupplement::LineItem::DiscountTreatmentCode::TaggedSymbol])
          end
          def self.values; end
        end
      end

      # #/components/schemas/card_purchase_supplement/properties/type
      module Type
        extend Increase::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Increase::Models::CardPurchaseSupplement::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol) }

        CARD_PURCHASE_SUPPLEMENT =
          T.let(:card_purchase_supplement, Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol)

        sig { override.returns(T::Array[Increase::Models::CardPurchaseSupplement::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
