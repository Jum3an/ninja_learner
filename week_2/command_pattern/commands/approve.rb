module CommandPattern::Commands
  class Approve < Base
    def initialize(receiver:, current_user:)
      @current_user = current_user
      super(receiver: receiver)
    end

    def execute
      receiver.status = 'approved'
      receiver.approved_at = Time.now
      receiver.approved_by_id = current_user.id
      receiver.save!
    end

    private

    attr_reader :current_user
  end
end
