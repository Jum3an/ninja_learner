class PaymentGatewayClient
  include Singleton

  BASE_URL = ENV['PAYMENT_BASE_URL'] || 'https://payments.example.com'
  API_KEY = ENV['PAYMENT_API_KEY']
  HEADERS = {
    'Authorization' => "Bearer #{API_KEY}",
    'Content-Type' => 'application/json'
  }.freeze

  def initialize
    raise('Missing PAYMENT_API_KEY') if API_KEY.nil?

    puts('PaymentGatewayClient initialized...')
  end

  def charge(amount:, currency:, customer_id:)
    puts("POST #{BASE_URL}/charge")
    puts("Charging #{amount} #{currency} for customer #{customer_id}")
  end

  def refund(transaction_id:)
    puts("POST #{BASE_URL}/refund")
    puts("Refunding transaction #{transaction_id}")
  end
end
