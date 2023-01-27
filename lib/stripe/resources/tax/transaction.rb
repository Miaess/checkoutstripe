# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    # A Tax `Transaction` records the tax collected from or refunded to your customer.
    class Transaction < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "tax.transaction"

      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.create_reversal(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/tax/transactions/create_reversal",
          params: params,
          opts: opts
        )
      end

      def self.list_line_items(transaction, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/tax/transactions/%<transaction>s/line_items", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts
        )
      end

      def self.list_transactions(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/tax/transactions",
          params: params,
          opts: opts
        )
      end
    end
  end
end