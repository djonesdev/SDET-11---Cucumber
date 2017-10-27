require 'capybara/cucumber'
require_relative '../lib/bbc_site'
require 'rspec'


Capybara::register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 5
  config.default_driver = :chrome
  config.app_host = 'https://www.bbc.co.uk/'
end
