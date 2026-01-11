# frozen_string_literal: true

module Strategy
  module ShippingStrategies
    class FedexCalculationStrategy < CalculateStrategy
      def calculate
        order.weight * 10 + 15
      end
    end
  end
end
