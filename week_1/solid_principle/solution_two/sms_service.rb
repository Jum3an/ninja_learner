# frozen_string_literal: true

module SolidPrinciple
  class SmsService
    def initialize(user:, content:)
      @user = user
      @content = content
    end

    attr_reader :user, :content

    def call
      send_sms if validates_phone_number
    end

    def validates_phone_number
      user.phone_number
    end

    def send_sms
      puts "Sending SMS to #{user.phone_number} with content: #{content}"
    end
  end
end
