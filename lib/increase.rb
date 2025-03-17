# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "increase/version"
require_relative "increase/util"
require_relative "increase/extern"
require_relative "increase/base_model"
require_relative "increase/base_page"
require_relative "increase/request_options"
require_relative "increase/errors"
require_relative "increase/base_client"
require_relative "increase/pooled_net_requester"
require_relative "increase/client"
require_relative "increase/page"
require_relative "increase/models/account"
require_relative "increase/models/account_balance_params"
require_relative "increase/models/account_close_params"
require_relative "increase/models/account_create_params"
require_relative "increase/models/account_list_params"
require_relative "increase/models/account_number"
require_relative "increase/models/account_number_create_params"
require_relative "increase/models/account_number_list_params"
require_relative "increase/models/account_number_retrieve_params"
require_relative "increase/models/account_number_update_params"
require_relative "increase/models/account_retrieve_params"
require_relative "increase/models/account_statement"
require_relative "increase/models/account_statement_list_params"
require_relative "increase/models/account_statement_retrieve_params"
require_relative "increase/models/account_transfer"
require_relative "increase/models/account_transfer_approve_params"
require_relative "increase/models/account_transfer_cancel_params"
require_relative "increase/models/account_transfer_create_params"
require_relative "increase/models/account_transfer_list_params"
require_relative "increase/models/account_transfer_retrieve_params"
require_relative "increase/models/account_update_params"
require_relative "increase/models/ach_prenotification"
require_relative "increase/models/ach_prenotification_create_params"
require_relative "increase/models/ach_prenotification_list_params"
require_relative "increase/models/ach_prenotification_retrieve_params"
require_relative "increase/models/ach_transfer"
require_relative "increase/models/ach_transfer_approve_params"
require_relative "increase/models/ach_transfer_cancel_params"
require_relative "increase/models/ach_transfer_create_params"
require_relative "increase/models/ach_transfer_list_params"
require_relative "increase/models/ach_transfer_retrieve_params"
require_relative "increase/models/balance_lookup"
require_relative "increase/models/bookkeeping_account"
require_relative "increase/models/bookkeeping_account_balance_params"
require_relative "increase/models/bookkeeping_account_create_params"
require_relative "increase/models/bookkeeping_account_list_params"
require_relative "increase/models/bookkeeping_account_update_params"
require_relative "increase/models/bookkeeping_balance_lookup"
require_relative "increase/models/bookkeeping_entry"
require_relative "increase/models/bookkeeping_entry_list_params"
require_relative "increase/models/bookkeeping_entry_retrieve_params"
require_relative "increase/models/bookkeeping_entry_set"
require_relative "increase/models/bookkeeping_entry_set_create_params"
require_relative "increase/models/bookkeeping_entry_set_list_params"
require_relative "increase/models/bookkeeping_entry_set_retrieve_params"
require_relative "increase/models/card"
require_relative "increase/models/card_create_params"
require_relative "increase/models/card_details"
require_relative "increase/models/card_details_params"
require_relative "increase/models/card_dispute"
require_relative "increase/models/card_dispute_create_params"
require_relative "increase/models/card_dispute_list_params"
require_relative "increase/models/card_dispute_retrieve_params"
require_relative "increase/models/card_list_params"
require_relative "increase/models/card_payment"
require_relative "increase/models/card_payment_list_params"
require_relative "increase/models/card_payment_retrieve_params"
require_relative "increase/models/card_purchase_supplement"
require_relative "increase/models/card_purchase_supplement_list_params"
require_relative "increase/models/card_purchase_supplement_retrieve_params"
require_relative "increase/models/card_retrieve_params"
require_relative "increase/models/card_update_params"
require_relative "increase/models/check_deposit"
require_relative "increase/models/check_deposit_create_params"
require_relative "increase/models/check_deposit_list_params"
require_relative "increase/models/check_deposit_retrieve_params"
require_relative "increase/models/check_transfer"
require_relative "increase/models/check_transfer_approve_params"
require_relative "increase/models/check_transfer_cancel_params"
require_relative "increase/models/check_transfer_create_params"
require_relative "increase/models/check_transfer_list_params"
require_relative "increase/models/check_transfer_retrieve_params"
require_relative "increase/models/check_transfer_stop_payment_params"
require_relative "increase/models/declined_transaction"
require_relative "increase/models/declined_transaction_list_params"
require_relative "increase/models/declined_transaction_retrieve_params"
require_relative "increase/models/digital_card_profile"
require_relative "increase/models/digital_card_profile_archive_params"
require_relative "increase/models/digital_card_profile_clone_params"
require_relative "increase/models/digital_card_profile_create_params"
require_relative "increase/models/digital_card_profile_list_params"
require_relative "increase/models/digital_card_profile_retrieve_params"
require_relative "increase/models/digital_wallet_token"
require_relative "increase/models/digital_wallet_token_list_params"
require_relative "increase/models/digital_wallet_token_retrieve_params"
require_relative "increase/models/document"
require_relative "increase/models/document_list_params"
require_relative "increase/models/document_retrieve_params"
require_relative "increase/models/entity"
require_relative "increase/models/entity_archive_beneficial_owner_params"
require_relative "increase/models/entity_archive_params"
require_relative "increase/models/entity_confirm_params"
require_relative "increase/models/entity_create_beneficial_owner_params"
require_relative "increase/models/entity_create_params"
require_relative "increase/models/entity_list_params"
require_relative "increase/models/entity_retrieve_params"
require_relative "increase/models/entity_supplemental_document"
require_relative "increase/models/entity_update_address_params"
require_relative "increase/models/entity_update_beneficial_owner_address_params"
require_relative "increase/models/entity_update_industry_code_params"
require_relative "increase/models/event"
require_relative "increase/models/event_list_params"
require_relative "increase/models/event_retrieve_params"
require_relative "increase/models/event_subscription"
require_relative "increase/models/event_subscription_create_params"
require_relative "increase/models/event_subscription_list_params"
require_relative "increase/models/event_subscription_retrieve_params"
require_relative "increase/models/event_subscription_update_params"
require_relative "increase/models/export"
require_relative "increase/models/export_create_params"
require_relative "increase/models/export_list_params"
require_relative "increase/models/export_retrieve_params"
require_relative "increase/models/external_account"
require_relative "increase/models/external_account_create_params"
require_relative "increase/models/external_account_list_params"
require_relative "increase/models/external_account_retrieve_params"
require_relative "increase/models/external_account_update_params"
require_relative "increase/models/file"
require_relative "increase/models/file_create_params"
require_relative "increase/models/file_link"
require_relative "increase/models/file_link_create_params"
require_relative "increase/models/file_list_params"
require_relative "increase/models/file_retrieve_params"
require_relative "increase/models/group"
require_relative "increase/models/group_retrieve_params"
require_relative "increase/models/inbound_ach_transfer"
require_relative "increase/models/inbound_ach_transfer_create_notification_of_change_params"
require_relative "increase/models/inbound_ach_transfer_decline_params"
require_relative "increase/models/inbound_ach_transfer_list_params"
require_relative "increase/models/inbound_ach_transfer_retrieve_params"
require_relative "increase/models/inbound_ach_transfer_transfer_return_params"
require_relative "increase/models/inbound_check_deposit"
require_relative "increase/models/inbound_check_deposit_decline_params"
require_relative "increase/models/inbound_check_deposit_list_params"
require_relative "increase/models/inbound_check_deposit_retrieve_params"
require_relative "increase/models/inbound_check_deposit_return_params"
require_relative "increase/models/inbound_mail_item"
require_relative "increase/models/inbound_mail_item_list_params"
require_relative "increase/models/inbound_mail_item_retrieve_params"
require_relative "increase/models/inbound_real_time_payments_transfer"
require_relative "increase/models/inbound_real_time_payments_transfer_list_params"
require_relative "increase/models/inbound_real_time_payments_transfer_retrieve_params"
require_relative "increase/models/inbound_wire_drawdown_request"
require_relative "increase/models/inbound_wire_drawdown_request_list_params"
require_relative "increase/models/inbound_wire_drawdown_request_retrieve_params"
require_relative "increase/models/inbound_wire_transfer"
require_relative "increase/models/inbound_wire_transfer_list_params"
require_relative "increase/models/inbound_wire_transfer_retrieve_params"
require_relative "increase/models/intrafi_account_enrollment"
require_relative "increase/models/intrafi_account_enrollment_create_params"
require_relative "increase/models/intrafi_account_enrollment_list_params"
require_relative "increase/models/intrafi_account_enrollment_retrieve_params"
require_relative "increase/models/intrafi_account_enrollment_unenroll_params"
require_relative "increase/models/intrafi_balance"
require_relative "increase/models/intrafi_balance_intrafi_balance_params"
require_relative "increase/models/intrafi_exclusion"
require_relative "increase/models/intrafi_exclusion_archive_params"
require_relative "increase/models/intrafi_exclusion_create_params"
require_relative "increase/models/intrafi_exclusion_list_params"
require_relative "increase/models/intrafi_exclusion_retrieve_params"
require_relative "increase/models/lockbox"
require_relative "increase/models/lockbox_create_params"
require_relative "increase/models/lockbox_list_params"
require_relative "increase/models/lockbox_retrieve_params"
require_relative "increase/models/lockbox_update_params"
require_relative "increase/models/oauth_application"
require_relative "increase/models/oauth_application_list_params"
require_relative "increase/models/oauth_application_retrieve_params"
require_relative "increase/models/oauth_connection"
require_relative "increase/models/oauth_connection_list_params"
require_relative "increase/models/oauth_connection_retrieve_params"
require_relative "increase/models/oauth_token"
require_relative "increase/models/oauth_token_create_params"
require_relative "increase/models/pending_transaction"
require_relative "increase/models/pending_transaction_list_params"
require_relative "increase/models/pending_transaction_retrieve_params"
require_relative "increase/models/physical_card"
require_relative "increase/models/physical_card_create_params"
require_relative "increase/models/physical_card_list_params"
require_relative "increase/models/physical_card_profile"
require_relative "increase/models/physical_card_profile_archive_params"
require_relative "increase/models/physical_card_profile_clone_params"
require_relative "increase/models/physical_card_profile_create_params"
require_relative "increase/models/physical_card_profile_list_params"
require_relative "increase/models/physical_card_profile_retrieve_params"
require_relative "increase/models/physical_card_retrieve_params"
require_relative "increase/models/physical_card_update_params"
require_relative "increase/models/program"
require_relative "increase/models/program_list_params"
require_relative "increase/models/program_retrieve_params"
require_relative "increase/models/proof_of_authorization_request"
require_relative "increase/models/proof_of_authorization_request_list_params"
require_relative "increase/models/proof_of_authorization_request_retrieve_params"
require_relative "increase/models/proof_of_authorization_request_submission"
require_relative "increase/models/proof_of_authorization_request_submission_create_params"
require_relative "increase/models/proof_of_authorization_request_submission_list_params"
require_relative "increase/models/proof_of_authorization_request_submission_retrieve_params"
require_relative "increase/models/real_time_decision"
require_relative "increase/models/real_time_decision_action_params"
require_relative "increase/models/real_time_decision_retrieve_params"
require_relative "increase/models/real_time_payments_transfer"
require_relative "increase/models/real_time_payments_transfer_create_params"
require_relative "increase/models/real_time_payments_transfer_list_params"
require_relative "increase/models/real_time_payments_transfer_retrieve_params"
require_relative "increase/models/routing_number_list_params"
require_relative "increase/models/routing_number_list_response"
require_relative "increase/models/simulations/account_statement_create_params"
require_relative "increase/models/simulations/account_transfer_complete_params"
require_relative "increase/models/simulations/ach_transfer_acknowledge_params"
require_relative "increase/models/simulations/ach_transfer_create_notification_of_change_params"
require_relative "increase/models/simulations/ach_transfer_return_params"
require_relative "increase/models/simulations/ach_transfer_settle_params"
require_relative "increase/models/simulations/ach_transfer_submit_params"
require_relative "increase/models/simulations/card_authorization_create_params"
require_relative "increase/models/simulations/card_authorization_create_response"
require_relative "increase/models/simulations/card_authorization_expiration_create_params"
require_relative "increase/models/simulations/card_dispute_action_params"
require_relative "increase/models/simulations/card_fuel_confirmation_create_params"
require_relative "increase/models/simulations/card_increment_create_params"
require_relative "increase/models/simulations/card_refund_create_params"
require_relative "increase/models/simulations/card_reversal_create_params"
require_relative "increase/models/simulations/card_settlement_create_params"
require_relative "increase/models/simulations/check_deposit_reject_params"
require_relative "increase/models/simulations/check_deposit_return_params"
require_relative "increase/models/simulations/check_deposit_submit_params"
require_relative "increase/models/simulations/check_transfer_mail_params"
require_relative "increase/models/simulations/digital_wallet_token_request_create_params"
require_relative "increase/models/simulations/digital_wallet_token_request_create_response"
require_relative "increase/models/simulations/document_create_params"
require_relative "increase/models/simulations/inbound_ach_transfer_create_params"
require_relative "increase/models/simulations/inbound_check_deposit_create_params"
require_relative "increase/models/simulations/inbound_funds_hold_release_params"
require_relative "increase/models/simulations/inbound_funds_hold_release_response"
require_relative "increase/models/simulations/inbound_mail_item_create_params"
require_relative "increase/models/simulations/inbound_real_time_payments_transfer_create_params"
require_relative "increase/models/simulations/inbound_wire_drawdown_request_create_params"
require_relative "increase/models/simulations/inbound_wire_transfer_create_params"
require_relative "increase/models/simulations/interest_payment_create_params"
require_relative "increase/models/simulations/physical_card_advance_shipment_params"
require_relative "increase/models/simulations/program_create_params"
require_relative "increase/models/simulations/real_time_payments_transfer_complete_params"
require_relative "increase/models/simulations/wire_transfer_reverse_params"
require_relative "increase/models/simulations/wire_transfer_submit_params"
require_relative "increase/models/supplemental_document_create_params"
require_relative "increase/models/supplemental_document_list_params"
require_relative "increase/models/transaction"
require_relative "increase/models/transaction_list_params"
require_relative "increase/models/transaction_retrieve_params"
require_relative "increase/models/wire_drawdown_request"
require_relative "increase/models/wire_drawdown_request_create_params"
require_relative "increase/models/wire_drawdown_request_list_params"
require_relative "increase/models/wire_drawdown_request_retrieve_params"
require_relative "increase/models/wire_transfer"
require_relative "increase/models/wire_transfer_approve_params"
require_relative "increase/models/wire_transfer_cancel_params"
require_relative "increase/models/wire_transfer_create_params"
require_relative "increase/models/wire_transfer_list_params"
require_relative "increase/models/wire_transfer_retrieve_params"
require_relative "increase/resources/account_numbers"
require_relative "increase/resources/accounts"
require_relative "increase/resources/account_statements"
require_relative "increase/resources/account_transfers"
require_relative "increase/resources/ach_prenotifications"
require_relative "increase/resources/ach_transfers"
require_relative "increase/resources/bookkeeping_accounts"
require_relative "increase/resources/bookkeeping_entries"
require_relative "increase/resources/bookkeeping_entry_sets"
require_relative "increase/resources/card_disputes"
require_relative "increase/resources/card_payments"
require_relative "increase/resources/card_purchase_supplements"
require_relative "increase/resources/cards"
require_relative "increase/resources/check_deposits"
require_relative "increase/resources/check_transfers"
require_relative "increase/resources/declined_transactions"
require_relative "increase/resources/digital_card_profiles"
require_relative "increase/resources/digital_wallet_tokens"
require_relative "increase/resources/documents"
require_relative "increase/resources/entities"
require_relative "increase/resources/events"
require_relative "increase/resources/event_subscriptions"
require_relative "increase/resources/exports"
require_relative "increase/resources/external_accounts"
require_relative "increase/resources/file_links"
require_relative "increase/resources/files"
require_relative "increase/resources/groups"
require_relative "increase/resources/inbound_ach_transfers"
require_relative "increase/resources/inbound_check_deposits"
require_relative "increase/resources/inbound_mail_items"
require_relative "increase/resources/inbound_real_time_payments_transfers"
require_relative "increase/resources/inbound_wire_drawdown_requests"
require_relative "increase/resources/inbound_wire_transfers"
require_relative "increase/resources/intrafi_account_enrollments"
require_relative "increase/resources/intrafi_balances"
require_relative "increase/resources/intrafi_exclusions"
require_relative "increase/resources/lockboxes"
require_relative "increase/resources/oauth_applications"
require_relative "increase/resources/oauth_connections"
require_relative "increase/resources/oauth_tokens"
require_relative "increase/resources/pending_transactions"
require_relative "increase/resources/physical_card_profiles"
require_relative "increase/resources/physical_cards"
require_relative "increase/resources/programs"
require_relative "increase/resources/proof_of_authorization_requests"
require_relative "increase/resources/proof_of_authorization_request_submissions"
require_relative "increase/resources/real_time_decisions"
require_relative "increase/resources/real_time_payments_transfers"
require_relative "increase/resources/routing_numbers"
require_relative "increase/resources/simulations"
require_relative "increase/resources/simulations/account_statements"
require_relative "increase/resources/simulations/account_transfers"
require_relative "increase/resources/simulations/ach_transfers"
require_relative "increase/resources/simulations/card_authorization_expirations"
require_relative "increase/resources/simulations/card_authorizations"
require_relative "increase/resources/simulations/card_disputes"
require_relative "increase/resources/simulations/card_fuel_confirmations"
require_relative "increase/resources/simulations/card_increments"
require_relative "increase/resources/simulations/card_refunds"
require_relative "increase/resources/simulations/card_reversals"
require_relative "increase/resources/simulations/card_settlements"
require_relative "increase/resources/simulations/check_deposits"
require_relative "increase/resources/simulations/check_transfers"
require_relative "increase/resources/simulations/digital_wallet_token_requests"
require_relative "increase/resources/simulations/documents"
require_relative "increase/resources/simulations/inbound_ach_transfers"
require_relative "increase/resources/simulations/inbound_check_deposits"
require_relative "increase/resources/simulations/inbound_funds_holds"
require_relative "increase/resources/simulations/inbound_mail_items"
require_relative "increase/resources/simulations/inbound_real_time_payments_transfers"
require_relative "increase/resources/simulations/inbound_wire_drawdown_requests"
require_relative "increase/resources/simulations/inbound_wire_transfers"
require_relative "increase/resources/simulations/interest_payments"
require_relative "increase/resources/simulations/physical_cards"
require_relative "increase/resources/simulations/programs"
require_relative "increase/resources/simulations/real_time_payments_transfers"
require_relative "increase/resources/simulations/wire_transfers"
require_relative "increase/resources/supplemental_documents"
require_relative "increase/resources/transactions"
require_relative "increase/resources/wire_drawdown_requests"
require_relative "increase/resources/wire_transfers"
