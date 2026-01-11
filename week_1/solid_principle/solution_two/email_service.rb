# frozen_string_literal: true

module SolidPrinciple
  class EmailService
    def initialize(user:, content:)
      @user = user
      @content = content
    end

    attr_reader :user, :content

    def call
      send_email if validates_email
    end

    def validates_email
      user.email
    end

    def send_email
      puts "Sending email to #{user.email} with content: #{content}"
    end
  end
end
