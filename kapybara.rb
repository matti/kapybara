require "bundler"
Bundler.setup

require "capybara"
require "selenium-webdriver"
require "chromedriver/helper"
require "capybara/dsl"
require "pry-byebug"

require "./app"

require "capybara/dsl"
include Capybara::DSL

options = ::Selenium::WebDriver::Chrome::Options.new
options.add_argument 'window-size=1680,1024'
options.add_argument 'disable-infobars'

capabilities = Selenium::WebDriver::Remote::Capabilities.chrome

Capybara.register_driver :chrome do
  Capybara::Selenium::Driver.new(nil,
    browser: :chrome,
    options: options,
    desired_capabilities: capabilities
  )
end

Chromedriver.set_version "2.40"
Capybara.default_driver = :chrome

visit "about:blank"

load ARGV[0] if ARGV[0]
Pry.start
