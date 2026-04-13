module GatewayAdapters
  class PaymobGatewayAdapter < BaseGatewayAdapter
    def pay
      # expects cents
      payment_gateway.pay(amount * 100)
    end

    private

    def payment_gateway
      PaymentGateway::PaymobGateway.new
    end
  end
end
