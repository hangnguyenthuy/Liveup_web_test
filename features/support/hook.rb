require 'rubygems'
require 'watir'
require "selenium/client"


Before do |scenario|
  @scenario         ||= scenario
  @current_step ||= 0
  @browser = Watir::Browser.new(:chrome, switches: %w[--disable-infobars])
  @logger = Logger.new(STDOUT)
  puts ("************** Scenario Starting: #{scenario.name} ************")

  # @tests_step        = scenario.test_steps.hookdelete_if { |step| step.name == "AfterStep hook" }
  # @current_step_name = @tests_step[@step_index].name
end

After do |scenario|
  # ReportHelper.generate_report_directory((PROJECT_DIR, BUILD_DIRECTORY, @scenario, @current_step_name))
  # if scenario.failed?
  #   # take_screenshot
  # end
  puts ("************** Scenario Ending: #{scenario.name} ************")
  @browser.close
end

After('@testcase') do
  # Something
end

AfterStep do
  @logger.progname = @scenario.test_steps[@current_step].to_s
  @logger.info(@browser.url)
  @current_step = @current_step + 1

end

def take_screenshot(scenario, step_name, is_attach_screenshot)
  @file_path              = ReportHelper.take_step_screenshot(PROJECT_DIR, BUILD_DIRECTORY, scenario, step_name)
  take_step_screenshot
  is_allure_report_enable = !feature_tracker.nil?
  update_tracker_step(step_name)
  @browser_log = get_browser_log(type=:browser)
  LoggerHelper.print_log_for_step(scenario, @browser_log, get_browser_url, get_browser_ready_state)
  if is_attach_screenshot
    ReportHelper.take_step_screenshot(@browser, scenario, @file_path)
    ReportHelper.generate_report_for_step(scenario, @file_path, ReportFile.new(file_name: 'html', file_path: @file_path, file_extension: 'html', file_content: @browser.html))
  end
  if is_allure_report_enable
    ReportHelper.generate_report_for_step(scenario, @file_path, ReportFile.new(file_name: 'after_cookies', file_path: @file_path, file_extension: 'cookies', file_content: get_current_cookies))
  end
end