module Transaction
  class ChargeCustomer
    def initialize(currency: 'USD')
      @currency = currency
    end

    attr_reader :currency

    def call(customer_id:, amount:)
      client = PaymentGatewayClient.instance
      client.charge(amount:, currency:, customer_id: customer_id)
    end
  end
end
