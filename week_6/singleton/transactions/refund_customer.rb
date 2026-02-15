module Transaction
  class RefundCustomer
    def call(transaction_id:)
      client = PaymentGatewayClient.instance
      client.refund(transaction_id:)
    end
  end
end
