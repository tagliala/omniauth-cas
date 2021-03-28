require 'bundler/setup'
require 'awesome_print'

RSpec.configure do |c|
  c.filter_run focus: true
  c.run_all_when_everything_filtered = true
end

require 'rack/test'
require 'webmock/rspec'
require 'omniauth-cas'

OmniAuth.config.logger = Logger.new( '/dev/null' )
OmniAuth.config.request_validation_phase = nil if OmniAuth.config.respond_to?(:request_validation_phase)
