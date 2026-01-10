class OrderService
  def checkout(order, user, discount_type)
    total = 0

    order.items.each do |item|
      total += item.price * item.quantity
    end

    if discount_type == :vip
      total *= 0.8
    elsif discount_type == :coupon
      total -= 20
    elsif discount_type == :seasonal
      total *= 0.9
    end

    if user.email
      puts "Sending email to #{user.email}"
    end

    if user.phone
      puts "Sending SMS to #{user.phone}"
    end

    puts "Saving order with total #{total}"
    total
  end
end