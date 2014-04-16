require 'blackboxd'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
  
Before do
  @driver = Selenium::WebDriver.for :chrome	
  @time = 15
end

After do 
  @driver.quit
end