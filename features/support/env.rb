require 'rspec'
require 'cucumber'
require	'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'cpf_faker'
require 'report_builder'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
  
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30
Capybara.page.driver.browser.manage.window.maximize

# Environment definitions
ENV['ENV'] = 'dev' unless ENV.key? 'ENV'

AUTH = YAML.load_file('./config/authentication.yml')[ENV['ENV']]

# Fixtures
DATA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]
MSG = YAML.load_file('./fixtures/messages.yml')[ENV['ENV']]
