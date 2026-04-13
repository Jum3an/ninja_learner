module GatewayAdapters
  class StripeGatewayAdapter < BaseGatewayAdapter
    def pay
      payment_gateway.charge(amount:)
    end

    private

    def payment_gateway
      PaymentGateway::StripeGateway.new
    end
  end
end
