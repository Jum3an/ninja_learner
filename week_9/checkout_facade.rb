class  CheckoutFacade
  def initialize(order:)
    @order = order
    @inventory = Services::Inventory.new
    @payment_gateway = Services::PaymentGateway.new
    @shipping = Services::Shipping.new
    @notification = Services::Notification.new
    @success = true
  end

  def call
    # Payment
    payment_gateway.charge(order.total_price)
    # Inventory
    order.items.each do |item|
      inventory.reserve(item.product_id, item.quantity)
    end
    # Shipping
    shipping.schedule(order.id)
    # Notification
    notification.send_email(order.user_email, 'Your order has been placed')
    rescue StandardError => e
      @success = false
      # Handle the error, e.g., log it or notify the user
  end

  def success?
    @success
  end

  private

  attr_reader :order, :inventory, :payment_gateway, :shipping, :notification
end
