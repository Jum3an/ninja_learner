# frozen_string_literal: true

module Strategy
  module ShippingStrategies
    class DhlCalculationStrategy < CalculateStrategy
      def calculate
        order.weight * 12 + 20
      end
    end
  end
end
