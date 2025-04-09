# frozen_string_literal: true

module Increase
  module Models
    # @see Increase::Resources::Lockboxes#create
    class Lockbox < Increase::Internal::Type::BaseModel
      # @!attribute id
      #   #/components/schemas/lockbox/properties/id
      #
      #   @return [String]
      required :id, String

      # @!attribute account_id
      #   #/components/schemas/lockbox/properties/account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute address
      #   #/components/schemas/lockbox/properties/address
      #
      #   @return [Increase::Models::Lockbox::Address]
      required :address, -> { Increase::Models::Lockbox::Address }

      # @!attribute created_at
      #   #/components/schemas/lockbox/properties/created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   #/components/schemas/lockbox/properties/description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute idempotency_key
      #   #/components/schemas/lockbox/properties/idempotency_key
      #
      #   @return [String, nil]
      required :idempotency_key, String, nil?: true

      # @!attribute recipient_name
      #   #/components/schemas/lockbox/properties/recipient_name
      #
      #   @return [String, nil]
      required :recipient_name, String, nil?: true

      # @!attribute status
      #   #/components/schemas/lockbox/properties/status
      #
      #   @return [Symbol, Increase::Models::Lockbox::Status]
      required :status, enum: -> { Increase::Models::Lockbox::Status }

      # @!attribute type
      #   #/components/schemas/lockbox/properties/type
      #
      #   @return [Symbol, Increase::Models::Lockbox::Type]
      required :type, enum: -> { Increase::Models::Lockbox::Type }

      # @!parse
      #   # #/components/schemas/lockbox
      #   #
      #   # @param id [String]
      #   # @param account_id [String]
      #   # @param address [Increase::Models::Lockbox::Address]
      #   # @param created_at [Time]
      #   # @param description [String, nil]
      #   # @param idempotency_key [String, nil]
      #   # @param recipient_name [String, nil]
      #   # @param status [Symbol, Increase::Models::Lockbox::Status]
      #   # @param type [Symbol, Increase::Models::Lockbox::Type]
      #   #
      #   def initialize(
      #     id:,
      #     account_id:,
      #     address:,
      #     created_at:,
      #     description:,
      #     idempotency_key:,
      #     recipient_name:,
      #     status:,
      #     type:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void

      # @see Increase::Models::Lockbox#address
      class Address < Increase::Internal::Type::BaseModel
        # @!attribute city
        #   #/components/schemas/lockbox/properties/address/properties/city
        #
        #   @return [String]
        required :city, String

        # @!attribute line1
        #   #/components/schemas/lockbox/properties/address/properties/line1
        #
        #   @return [String]
        required :line1, String

        # @!attribute line2
        #   #/components/schemas/lockbox/properties/address/properties/line2
        #
        #   @return [String]
        required :line2, String

        # @!attribute postal_code
        #   #/components/schemas/lockbox/properties/address/properties/postal_code
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute recipient
        #   #/components/schemas/lockbox/properties/address/properties/recipient
        #
        #   @return [String, nil]
        required :recipient, String, nil?: true

        # @!attribute state
        #   #/components/schemas/lockbox/properties/address/properties/state
        #
        #   @return [String]
        required :state, String

        # @!parse
        #   # #/components/schemas/lockbox/properties/address
        #   #
        #   # @param city [String]
        #   # @param line1 [String]
        #   # @param line2 [String]
        #   # @param postal_code [String]
        #   # @param recipient [String, nil]
        #   # @param state [String]
        #   #
        #   def initialize(city:, line1:, line2:, postal_code:, recipient:, state:, **) = super

        # def initialize: (Hash | Increase::Internal::Type::BaseModel) -> void
      end

      # #/components/schemas/lockbox/properties/status
      #
      # @see Increase::Models::Lockbox#status
      module Status
        extend Increase::Internal::Type::Enum

        # This Lockbox is active. Checks mailed to it will be deposited automatically.
        ACTIVE = :active

        # This Lockbox is inactive. Checks mailed to it will not be deposited.
        INACTIVE = :inactive

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      # #/components/schemas/lockbox/properties/type
      #
      # @see Increase::Models::Lockbox#type
      module Type
        extend Increase::Internal::Type::Enum

        LOCKBOX = :lockbox

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
