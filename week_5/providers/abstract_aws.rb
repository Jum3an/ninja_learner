module Providers
  class AbstractAws
    def sms_service
      SmsServices::AwsSms.new
    end

    def email_service
      EmailServices::AwsEmail.new
    end
  end
end

# Example for use when ENV['PROVIDER'] = "aws"
# provider = "Providers::Abstract#{ENV["PROVIDER"]&.capitalize}".safe_constantize&.new || Providers::AbstractBase.new
# sms_service = provider.sms_service
# email_service = provider.email_service
# sms_service.send("Hello via SMS AWS")
# email_service.send("Hello via Email AWS")
