module Providers
  class AbstractBase
    def sms_service
      SmsServices::Base.new
    end

    def email_service
      EmailServices::Base.new
    end
  end
end

# Example for use
# provider = "Providers::Abstract#{ENV["PROVIDER"]&.capitalize}".safe_constantize&.new || Providers::AbstractBase.new
# sms_service = provider.sms_service
# email_service = provider.email_service
# sms_service.send("Hello via SMS")
# email_service.send("Hello via Email")
