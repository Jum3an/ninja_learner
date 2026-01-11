# frozen_string_literal: true

module DiscountsCalculators
  class Seasonal < Base
    def apply
      subtotal * 0.9
    end
  end
end
