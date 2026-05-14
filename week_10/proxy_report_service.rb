class ProxyReportService
  def initialize
    @report_service = ReportService.new
  end

  def fetch(user_id)
    store_in_cache(user_id) if report.nil?
    report
  end

  private

  attr_reader :report_service, :report

  def store_in_cache(user_id)
    @report = report_service.fetch(user_id)
  end
end
