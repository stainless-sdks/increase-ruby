# frozen_string_literal: true

module Increase
  module Resources
    class RealTimeDecisions
      def initialize(client:)
        @client = client
      end

      # Retrieve a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimeDecision]
      def retrieve(real_time_decision_id, opts = {})
        req = {}
        req[:method] = :get
        req[:path] = "/real_time_decisions/#{real_time_decision_id}"
        req[:model] = Increase::Models::RealTimeDecision
        @client.request(req, opts)
      end

      # Action a Real-Time Decision
      #
      # @param real_time_decision_id [String] The identifier of the Real-Time Decision.
      #
      # @param params [Hash] Attributes to send in this request.
      # @option params [CardAuthorization, nil] :card_authorization If the Real-Time Decision relates to a card authorization attempt, this object
      #   contains your response to the authorization.
      # @option params [DigitalWalletAuthentication, nil] :digital_wallet_authentication If the Real-Time Decision relates to a digital wallet authentication attempt,
      #   this object contains your response to the authentication.
      # @option params [DigitalWalletToken, nil] :digital_wallet_token If the Real-Time Decision relates to a digital wallet token provisioning
      #   attempt, this object contains your response to the attempt.
      #
      # @param opts [Hash, Increase::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Increase::Models::RealTimeDecision]
      def action(real_time_decision_id, params = {}, opts = {})
        req = {}
        req[:method] = :post
        req[:path] = "/real_time_decisions/#{real_time_decision_id}/action"
        req[:body] = params
        req[:model] = Increase::Models::RealTimeDecision
        @client.request(req, opts)
      end

      class CardAuthorization < BaseModel
        # @!attribute [rw] decision
        #   Whether the card authorization should be approved or declined.
        #   @return [Symbol, CardAuthorization::Decision]
        required :decision, enum: -> { CardAuthorization::Decision }

        # Whether the card authorization should be approved or declined.
        class Decision < Increase::Enum
          # Approve the authorization.
          APPROVE = :approve

          # Decline the authorization.
          DECLINE = :decline
        end
      end

      class DigitalWalletAuthentication < BaseModel
        # @!attribute [rw] result
        #   Whether your application was able to deliver the one-time passcode.
        #   @return [Symbol, DigitalWalletAuthentication::Result]
        required :result, enum: -> { DigitalWalletAuthentication::Result }

        # Whether your application was able to deliver the one-time passcode.
        class Result < Increase::Enum
          # Your application successfully delivered the one-time passcode to the cardholder.
          SUCCESS = :success

          # Your application failed to deliver the one-time passcode to the cardholder.
          FAILURE = :failure
        end
      end

      class DigitalWalletToken < BaseModel
        # @!attribute [rw] approval
        #   If your application approves the provisioning attempt, this contains metadata about the digital wallet token that will be generated.
        #   @return [DigitalWalletToken::Approval]
        optional :approval, -> { DigitalWalletToken::Approval }

        # @!attribute [rw] decline
        #   If your application declines the provisioning attempt, this contains details about the decline.
        #   @return [DigitalWalletToken::Decline]
        optional :decline, -> { DigitalWalletToken::Decline }

        class Approval < BaseModel
          # @!attribute [rw] email
          #   An email address that can be used to verify the cardholder via one-time passcode.
          #   @return [String]
          optional :email, String

          # @!attribute [rw] phone
          #   A phone number that can be used to verify the cardholder via one-time passcode over SMS.
          #   @return [String]
          optional :phone, String
        end

        class Decline < BaseModel
          # @!attribute [rw] reason
          #   Why the tokenization attempt was declined. This is for logging purposes only and is not displayed to the end-user.
          #   @return [String]
          optional :reason, String
        end
      end
    end
  end
end
