# frozen_string_literal: true

module DiscountsCalculators
  class Coupon < Base
    def apply
      subtotal - 20
    end
  end
end
