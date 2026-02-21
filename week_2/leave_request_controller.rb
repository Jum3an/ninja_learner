class LeaveRequestsController < ApplicationController
  before_action :validate_request

  def approve
    CommandPattern::CommandsExecuter.new(
      commands: [
        CommandPattern::Commands::Approve.new(receiver: request, current_user: current_user),
        CommandPattern::Commands::UpdateOnLeaveStatus.new(receiver: employee),
        CommandPattern::Commands::SendEmail.new(receiver: employee),
        CommandPattern::Commands::SendNotification.new(receiver: employee)

      ]
    ).execute_all

    render json: { success: true }
  end

  def request
    @request ||= LeaveRequest.find(params[:id])
  end

  def employee
    @employee ||= leave_request.employee
  end

  def validate_request
    return if request.status == 'pending'

    render(json: { success: false, error: 'Already processed', data: {} }, status: 400)
  end
end
