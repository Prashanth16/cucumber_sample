require 'capybara/cucumber'
require "selenium/webdriver"
require "pry"

 Capybara.default_driver = :chrome
 Capybara.register_driver :chrome do |app|
 options = {
 :js_errors => false,
 :timeout => 360,
 :debug => false,
 :inspector => false,
 }
 Capybara::Selenium::Driver.new(app, :browser => :chrome)
 end

 Before do
   @app=App.new
   @search_flight = SearchFlight.new
   @search_book = SearchBook.new
 end
