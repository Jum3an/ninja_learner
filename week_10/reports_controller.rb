class ReportsController
  def show
    user_id = params[:user_id]

    service = ProxyReportService.new
    report = service.fetch(user_id)

    render json: { report: report }
  end
end
