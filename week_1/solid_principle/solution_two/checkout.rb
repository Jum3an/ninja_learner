# frozen_string_literal: true

module SolidPrinciple
  # Single Responsibility Principle
  class CheckoutProcess
    def initialize(subtotal_calculator:, discount_calculator_klass:, user:)
      @subtotal_calculator = subtotal_calculator
      @discount_calculator_klass = discount_calculator_klass
      @user = user
      @total = 0
    end

    attr_accessor :total
    attr_reader :user, :subtotal_calculator, :discount_calculator

    def checkout
      calculate_subtotal
      apply_discount
      send_email

      puts "Saving order with total #{total}"
      total
    end

    def calculate_subtotal
      self.total = subtotal_calculator.calculate
    end

    def apply_discount
      self.total = discount_calculator_klass.new(subtotal: total).apply
    end

    def send_email
      EmailService.new(user: user, content: "Your order total is #{total}").call
    end

    def send_sms
      SmsService.new(user: user, content: "Your order total is #{total}").call
    end
  end
end

# example usage:
# order = OpenStruct.new(items: [OpenStruct.new(price: 100, quantity: 2)])
# subtotal_calculator = SubtotalCalculators::NormalCalculator.new(order: order)
# discount_calculator = DiscountsCalculators::Vip
# CheckoutProcess.new(
#   subtotal_calculator: subtotal_calculator,
#   discount_calculator_klass: discount_calculator,
#   user: user
#   ).checkout
