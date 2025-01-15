# frozen_string_literal: true

module Increase
  module Models
    class RealTimeDecisionActionParams < Increase::BaseModel
      # @!attribute card_authentication
      #   If the Real-Time Decision relates to a 3DS card authentication attempt, this object contains your response to the authentication.
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthentication]
      optional :card_authentication, -> { Increase::Models::RealTimeDecisionActionParams::CardAuthentication }

      # @!attribute card_authentication_challenge
      #   If the Real-Time Decision relates to 3DS card authentication challenge delivery, this object contains your response.
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge]
      optional :card_authentication_challenge,
               -> { Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge }

      # @!attribute card_authorization
      #   If the Real-Time Decision relates to a card authorization attempt, this object contains your response to the authorization.
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::CardAuthorization]
      optional :card_authorization, -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization }

      # @!attribute digital_wallet_authentication
      #   If the Real-Time Decision relates to a digital wallet authentication attempt, this object contains your response to the authentication.
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication]
      optional :digital_wallet_authentication,
               -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication }

      # @!attribute digital_wallet_token
      #   If the Real-Time Decision relates to a digital wallet token provisioning attempt, this object contains your response to the attempt.
      #
      #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken]
      optional :digital_wallet_token,
               -> {
                 Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken
               }

      # @!parse
      #   # @param card_authentication [Increase::Models::RealTimeDecisionActionParams::CardAuthentication] If the Real-Time Decision relates to a 3DS card authentication attempt, this
      #   #   object contains your response to the authentication.
      #   #
      #   # @param card_authentication_challenge [Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge] If the Real-Time Decision relates to 3DS card authentication challenge delivery,
      #   #   this object contains your response.
      #   #
      #   # @param card_authorization [Increase::Models::RealTimeDecisionActionParams::CardAuthorization] If the Real-Time Decision relates to a card authorization attempt, this object
      #   #   contains your response to the authorization.
      #   #
      #   # @param digital_wallet_authentication [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication] If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   #   this object contains your response to the authentication.
      #   #
      #   # @param digital_wallet_token [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken] If the Real-Time Decision relates to a digital wallet token provisioning
      #   #   attempt, this object contains your response to the attempt.
      #   #
      #   def initialize(
      #     card_authentication: nil,
      #     card_authentication_challenge: nil,
      #     card_authorization: nil,
      #     digital_wallet_authentication: nil,
      #     digital_wallet_token: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Increase::BaseModel) -> void

      # @example
      #
      # ```ruby
      # card_authentication => {
      #   decision: enum: Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision
      # }
      # ```
      class CardAuthentication < Increase::BaseModel
        # @!attribute decision
        #   Whether the card authentication attempt should be approved or declined.
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthentication::Decision }

        # @!parse
        #   # If the Real-Time Decision relates to a 3DS card authentication attempt, this
        #   #   object contains your response to the authentication.
        #   #
        #   # @param decision [String] Whether the card authentication attempt should be approved or declined.
        #   #
        #   def initialize(decision:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether the card authentication attempt should be approved or declined.
        #
        # @example
        #
        # ```ruby
        # case decision
        # in :approve
        #   # ...
        # in :challenge
        #   # ...
        # in :deny
        #   # ...
        # end
        # ```
        class Decision < Increase::Enum
          # Approve the authentication attempt without triggering a challenge.
          APPROVE = :approve

          # Request further validation before approving the authentication attempt.
          CHALLENGE = :challenge

          # Deny the authentication attempt.
          DENY = :deny

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # card_authentication_challenge => {
      #   result: enum: Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result
      # }
      # ```
      class CardAuthenticationChallenge < Increase::BaseModel
        # @!attribute result
        #   Whether the card authentication challenge was successfully delivered to the cardholder.
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result]
        required :result,
                 enum: -> {
                   Increase::Models::RealTimeDecisionActionParams::CardAuthenticationChallenge::Result
                 }

        # @!parse
        #   # If the Real-Time Decision relates to 3DS card authentication challenge delivery,
        #   #   this object contains your response.
        #   #
        #   # @param result [String] Whether the card authentication challenge was successfully delivered to the
        #   #   cardholder.
        #   #
        #   def initialize(result:, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether the card authentication challenge was successfully delivered to the cardholder.
        #
        # @example
        #
        # ```ruby
        # case result
        # in :success
        #   # ...
        # in :failure
        #   # ...
        # end
        # ```
        class Result < Increase::Enum
          # Your application successfully delivered the one-time code to the cardholder.
          SUCCESS = :success

          # Your application was unable to deliver the one-time code to the cardholder.
          FAILURE = :failure

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # card_authorization => {
      #   decision: enum: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision,
      #   decline_reason: enum: Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason
      # }
      # ```
      class CardAuthorization < Increase::BaseModel
        # @!attribute decision
        #   Whether the card authorization should be approved or declined.
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision]
        required :decision,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization::Decision }

        # @!attribute decline_reason
        #   The reason the card authorization was declined. This translates to a specific decline code that is sent to the card network.
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason]
        optional :decline_reason,
                 enum: -> { Increase::Models::RealTimeDecisionActionParams::CardAuthorization::DeclineReason }

        # @!parse
        #   # If the Real-Time Decision relates to a card authorization attempt, this object
        #   #   contains your response to the authorization.
        #   #
        #   # @param decision [String] Whether the card authorization should be approved or declined.
        #   #
        #   # @param decline_reason [String] The reason the card authorization was declined. This translates to a specific
        #   #   decline code that is sent to the card network.
        #   #
        #   def initialize(decision:, decline_reason: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether the card authorization should be approved or declined.
        #
        # @example
        #
        # ```ruby
        # case decision
        # in :approve
        #   # ...
        # in :decline
        #   # ...
        # end
        # ```
        class Decision < Increase::Enum
          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline

          finalize!
        end

        # The reason the card authorization was declined. This translates to a specific decline code that is sent to the card network.
        #
        # @example
        #
        # ```ruby
        # case decline_reason
        # in :insufficient_funds
        #   # ...
        # in :transaction_never_allowed
        #   # ...
        # in :exceeds_approval_limit
        #   # ...
        # in :card_temporarily_disabled
        #   # ...
        # in :suspected_fraud
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class DeclineReason < Increase::Enum
          # The cardholder does not have sufficient funds to cover the transaction. The merchant may attempt to process the transaction again.
          INSUFFICIENT_FUNDS = :insufficient_funds

          # This type of transaction is not allowed for this card. This transaction should not be retried.
          TRANSACTION_NEVER_ALLOWED = :transaction_never_allowed

          # The transaction amount exceeds the cardholder's approval limit. The merchant may attempt to process the transaction again.
          EXCEEDS_APPROVAL_LIMIT = :exceeds_approval_limit

          # The card has been temporarily disabled or not yet activated. The merchant may attempt to process the transaction again.
          CARD_TEMPORARILY_DISABLED = :card_temporarily_disabled

          # The transaction is suspected to be fraudulent. The merchant may attempt to process the transaction again.
          SUSPECTED_FRAUD = :suspected_fraud

          # The transaction was declined for another reason. The merchant may attempt to process the transaction again. This should be used sparingly.
          OTHER = :other

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # digital_wallet_authentication => {
      #   result: enum: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result,
      #   success: Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success
      # }
      # ```
      class DigitalWalletAuthentication < Increase::BaseModel
        # @!attribute result
        #   Whether your application was able to deliver the one-time passcode.
        #
        #   @return [Symbol, Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result]
        required :result,
                 enum: -> {
                   Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Result
                 }

        # @!attribute success
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success]
        optional :success,
                 -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success }

        # @!parse
        #   # If the Real-Time Decision relates to a digital wallet authentication attempt,
        #   #   this object contains your response to the authentication.
        #   #
        #   # @param result [String] Whether your application was able to deliver the one-time passcode.
        #   #
        #   # @param success [Increase::Models::RealTimeDecisionActionParams::DigitalWalletAuthentication::Success]
        #   #
        #   def initialize(result:, success: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # Whether your application was able to deliver the one-time passcode.
        #
        # @example
        #
        # ```ruby
        # case result
        # in :success
        #   # ...
        # in :failure
        #   # ...
        # end
        # ```
        class Result < Increase::Enum
          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure

          finalize!
        end

        # @example
        #
        # ```ruby
        # success => {
        #   email: String,
        #   phone: String
        # }
        # ```
        class Success < Increase::BaseModel
          # @!attribute email
          #   The email address that was used to verify the cardholder via one-time passcode.
          #
          #   @return [String]
          optional :email, String

          # @!attribute phone
          #   The phone number that was used to verify the cardholder via one-time passcode over SMS.
          #
          #   @return [String]
          optional :phone, String

          # @!parse
          #   # @param email [String] The email address that was used to verify the cardholder via one-time passcode.
          #   #
          #   # @param phone [String] The phone number that was used to verify the cardholder via one-time passcode
          #   #   over SMS.
          #   #
          #   def initialize(email: nil, phone: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end

      # @example
      #
      # ```ruby
      # digital_wallet_token => {
      #   approval: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval,
      #   decline: Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline
      # }
      # ```
      class DigitalWalletToken < Increase::BaseModel
        # @!attribute approval
        #   If your application approves the provisioning attempt, this contains metadata about the digital wallet token that will be generated.
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval]
        optional :approval,
                 -> {
                   Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval
                 }

        # @!attribute decline
        #   If your application declines the provisioning attempt, this contains details about the decline.
        #
        #   @return [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline]
        optional :decline, -> { Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline }

        # @!parse
        #   # If the Real-Time Decision relates to a digital wallet token provisioning
        #   #   attempt, this object contains your response to the attempt.
        #   #
        #   # @param approval [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Approval] If your application approves the provisioning attempt, this contains metadata
        #   #   about the digital wallet token that will be generated.
        #   #
        #   # @param decline [Increase::Models::RealTimeDecisionActionParams::DigitalWalletToken::Decline] If your application declines the provisioning attempt, this contains details
        #   #   about the decline.
        #   #
        #   def initialize(approval: nil, decline: nil, **) = super

        # def initialize: (Hash | Increase::BaseModel) -> void

        # @example
        #
        # ```ruby
        # approval => {
        #   email: String,
        #   phone: String
        # }
        # ```
        class Approval < Increase::BaseModel
          # @!attribute email
          #   An email address that can be used to verify the cardholder via one-time passcode.
          #
          #   @return [String]
          optional :email, String

          # @!attribute phone
          #   A phone number that can be used to verify the cardholder via one-time passcode over SMS.
          #
          #   @return [String]
          optional :phone, String

          # @!parse
          #   # If your application approves the provisioning attempt, this contains metadata
          #   #   about the digital wallet token that will be generated.
          #   #
          #   # @param email [String] An email address that can be used to verify the cardholder via one-time
          #   #   passcode.
          #   #
          #   # @param phone [String] A phone number that can be used to verify the cardholder via one-time passcode
          #   #   over SMS.
          #   #
          #   def initialize(email: nil, phone: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end

        # @example
        #
        # ```ruby
        # decline => {
        #   reason: String
        # }
        # ```
        class Decline < Increase::BaseModel
          # @!attribute reason
          #   Why the tokenization attempt was declined. This is for logging purposes only and is not displayed to the end-user.
          #
          #   @return [String]
          optional :reason, String

          # @!parse
          #   # If your application declines the provisioning attempt, this contains details
          #   #   about the decline.
          #   #
          #   # @param reason [String] Why the tokenization attempt was declined. This is for logging purposes only and
          #   #   is not displayed to the end-user.
          #   #
          #   def initialize(reason: nil, **) = super

          # def initialize: (Hash | Increase::BaseModel) -> void
        end
      end
    end
  end
end
