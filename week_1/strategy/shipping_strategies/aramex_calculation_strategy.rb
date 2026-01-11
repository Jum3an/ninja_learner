# frozen_string_literal: true

module Strategy
  module ShippingStrategies
    class AramexCalculationStrategy < CalculateStrategy
      def calculate
        order.weight * 8 + 10
      end
    end
  end
end
