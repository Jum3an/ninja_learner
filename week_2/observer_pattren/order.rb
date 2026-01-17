module ObserverPattern
  class Order < Subject
    attr_accessor :state
    attr_reader :user_email, :user_phone

    def initialize(user_email, user_phone)
      @user_email = user_email
      @user_phone = user_phone
      @status = 'pending'
      @observers = []
    end

    def attach(observer)
      puts 'Subject: Attached an observer.'
      @observers << observer
    end

    def detach(observer)
      @observers.delete(observer)
    end

    def notify
      puts 'Subject: Notifying observers...'
      @observers.each { |observer| observer.update(self) }
    end

    def confirm!
      status = 'confirmed'
      puts "Order has been #{status}."
      notify
    end
  end
end
# Example usage:
# order = ObserverPattern::Order.new('user@example.com', '123-456-7890')
# order.attach(ObserverPattern::Observers::Email.new)
# order.attach(ObserverPattern::Observers::Sms.new)
# order.attach(ObserverPattern::Observers::Dashboard.new)
#
# order.confirm! 
