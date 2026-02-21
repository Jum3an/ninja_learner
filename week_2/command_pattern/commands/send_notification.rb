module CommandPattern::Commands
  class SendNotification < Base
    def execute
      Notification.create!(
        employee_id: receiver.id,
        message: 'Your leave request has been approved'
      )
    end
  end
end
