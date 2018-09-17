require "bundler/setup"
require "log/current/user"

require 'rubygems'
require 'bundler'
Bundler.require :default, :development

Combustion.initialize! :all

require 'rspec/rails'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.infer_spec_type_from_file_location!
end
