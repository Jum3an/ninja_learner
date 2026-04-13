module PaymentGateway
  class PaypalGateway
    def make_payment(amount)
      puts "Paypal paid #{amount} USD"
    end
  end
end
