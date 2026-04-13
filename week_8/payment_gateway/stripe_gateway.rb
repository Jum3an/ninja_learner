module PaymentGateway
  class StripeGateway
    def charge(amount:)
      puts "Stripe charged #{amount} USD"
    end
  end
end
