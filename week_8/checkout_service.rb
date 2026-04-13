# let think how we can fix it by adapter and factory or adapter only 
class CheckoutService
  def initialize(provider:, amount:)
    @provider = provider
    @amount = amount
  end

  def pay
    provider_adapter.pay
  end

  private

  attr_reader :provider, :amount

  def provider_adapter
    "GatewayAdapters::#{provider.to_s.capitalize}GatewayAdapter".safe_constantize&.new(amount:) || raise("Unsupported provider #{provider}")
  end
end

# example for calling the service
# service = CheckoutService.new(provider: :stripe, amount: 1000)
# service.pay
