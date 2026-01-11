# frozen_string_literal: true

module DiscountsCalculators
  class Vip < Base
    def apply
      subtotal * 0.8
    end
  end
end
