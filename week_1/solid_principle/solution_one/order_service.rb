# frozen_string_literal: true

class OrderService
  def initialize(user:, order:, discount_type:)
    @total = 0
    @user = user
    @order = order
    @discount_type = discount_type
  end

  DISCOUNTS_CALCULATION = {
    vip: ->(total) { total * 0.8 },
    coupon: ->(total) { total - 20 },
    seasonal: ->(total) { total * 0.9 }
  }.freeze

  attr_accessor :total
  attr_reader :user, :order, :discount_type

  def checkout
    calculate_subtotal
    apply_discount!
    send_email
    send_phone

    puts "Saving order with total #{total}"
    total
  end

  def calculate_subtotal
    order.items.each do |item|
      self.total += item.price * item.quantity
    end
  end

  def apply_discount!
    discount = DISCOUNTS_CALCULATION[discount_type]
    self.total = discount.call(total) if discount
  end

  def send_email
    puts "Sending email to #{user.email}" if user.email
  end

  def send_phone
    puts "Sending SMS to #{user.phone}" if user.phone
  end
end
