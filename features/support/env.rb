require 'blackboxd'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'gmail'
  
Before do
  @driver = Selenium::WebDriver.for :chrome	
  @time = 15
end

After do |scenario|
  if(scenario.failed?)
    gmail = Gmail.connect("<email>@gmail.com", "<password>")
    gmail.deliver do
      to "<email>"
      subject "Message"
      text_part do
        body "#{scenario.backtrace_line}"
      end
      html_part do
        body "<p>#{scenario.backtrace_line}</p>"
      end
    end
  end
  @driver.quit
end