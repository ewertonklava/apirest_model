require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# require_relative 'Page_helper'
require_relative 'helper'
require_relative 'utils'
require 'pry'
require 'faker'
require 'cpf_faker'
require 'rspec'
require 'allure-cucumber'
require 'fileutils'
require 'httparty'

# AJUSTAR ---------------------
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE'] unless defined?(ENVIRONMENT_TYPE)
# AJUSTAR ---------------------

HTTP_LOG = ENV['HTTP_LOG']
MASSA_APIREST = YAML.load_file(File.dirname(__FILE__) + "/massa/dev.yml")
CONFIG_APIREST = YAML.load_file(File.dirname(__FILE__) + "/config/dev.yml")

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if text == 'Before hook'
    return text if text == 'After hook'

    "#{source.last.keyword}#{Resultado}"
  end
end

# AMBIENTE = ENV['ambiente']
# BROWSER = ENV['browser']

# CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

# World(PageObjects)
# World(Helper)

# Capybara.register_driver :selenium do |app|
#   if BROWSER.eql?('chrome')
#     Capybara::Selenium::Driver.new(app, browser: :chrome)
#   else
#     BROWSER.eql?('chrome_headless')
#     args = ['--headless --no-default-browser-check']
#     Capybara::Selenium::Driver.new(app, browser: :chrome,
#                                         desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
#                                           'chromeOptions' => { 'args' => args }
#                                         ))
#   end
# end

# Capybara.configure do |config|
#   config.default_driver = :selenium
#   config.app_host = CONFIG['url_padrao']
#   config.default_max_wait_time = 5
# end

FileUtils.rm_rf('reports')
FileUtils.rm_rf('reports_allure')
FileUtils.mkdir_p('reports')
FileUtils.mkdir_p('reports_allure')
