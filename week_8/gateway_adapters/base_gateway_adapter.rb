module GatewayAdapters
  class BaseGatewayAdapter
    def initialize(amount:)
      @amount = amount
    end

    def pay
      raise NotImplementedError, "Subclasses must implement the pay method"
    end

    private

    attr_reader :amount

    def payment_gateway
      raise NotImplementedError, "Subclasses must implement the payment_gateway method"
    end
  end
end
