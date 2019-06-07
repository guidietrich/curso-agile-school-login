require 'capybara/dsl'
require 'cucumber'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'childprocess'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 5