require 'capybara'
require 'capybara/cucumber'
require "selenium-webdriver"

require_relative 'helper.rb'
require_relative 'spec_helper.rb'

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

# log-level: 
# Sets the minimum log level.
# Valid values are from 0 to 3: 
    # INFO = 0
    # WARNING = 1 
    # LOG_ERROR = 2 
    # LOG_FATAL = 3
# default is 0.
LOGLEVEL = 2

## Configurações do navegador
Capybara.register_driver :chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL' })
  opts = Selenium::WebDriver::Chrome::Options.new

  chrome_args = %w[--window-size=1366,768 --disable-gpu --no-sandbox --disable-dev-shm-usage]
  chrome_args.each { |arg| opts.add_argument(arg) }

  opts.add_argument('log-level=' + LOGLEVEL.to_s)
  
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts, desired_capabilities: caps)
end

## Configurações antes de cada feature
Before do |feature|
  Capybara.configure do |capybara|
    # Define o navegador utilizado nos testes
      if BROWSER.eql?('chrome')
          capybara.default_driver = :chrome
      end

      # Define o ambiente a ser testado
      if ENVIRONMENT_TYPE.eql?('qa')
        capybara.app_host = 'https://www.webmotors.com.br'
      end

    ## Define o tempo máximo de espera
    Capybara.default_max_wait_time = 75
  end
end

## Configurações após cada cenário
After do |scenario|
  ## Captura os screenshots
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.passed?
    take_screenshot(scenario_name, 'passed')
  else
    take_screenshot(scenario_name, 'failed')
  end

  ## Encerra a sessão do navegador
    Capybara.current_session.driver.quit
end