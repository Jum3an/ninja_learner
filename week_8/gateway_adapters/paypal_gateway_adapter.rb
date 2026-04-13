module GatewayAdapters
  class PaypalGatewayAdapter < BaseGatewayAdapter
    def pay
      payment_gateway.make_payment(amount)
    end

    private

    def payment_gateway
      PaymentGateway::PaypalGateway.new
    end
  end
end
