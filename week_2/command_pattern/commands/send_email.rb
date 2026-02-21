module CommandPattern::Commands
  class SendEmail < Base
    def execute
      LeaveMailer.approved(receiver.email).deliver_later
    end
  end
end
