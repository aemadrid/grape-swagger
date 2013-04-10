unless Object.const_defined? :SPEC_HELPER_LOADED

  $LOAD_PATH.unshift(File.dirname(__FILE__))
  $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
  $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'support'))

  require 'grape'
  require 'grape-swagger'

  require 'rubygems'
  require 'bundler'

  require 'pry'

  Bundler.setup :default, :test

  require 'rack/test'

  # Load support files
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

  RSpec.configure do |config|
    require 'rspec/expectations'
    config.include RSpec::Matchers

    config.mock_with :rspec

    config.include Rack::Test::Methods
  end

  Object.const_set :SPEC_HELPER_LOADED, true
end