module Providers
  class AbstractTwilio < AbstractBase
    def sms_service
      SmsServices::TwilioSms.new
    end

    def email_service
      EmailServices::TwilioEmail.new
    end
  end
end

# Example for use when ENV['PROVIDER'] = "twilio"
# provider = "Providers::Abstract#{ENV["PROVIDER"]&.capitalize}".safe_constantize&.new || Providers::AbstractBase.new
# sms_service = provider.sms_service
# email_service = provider.email_service
# sms_service.send("Hello via SMS Twilio")
# email_service.send("Hello via Email Twilio")
