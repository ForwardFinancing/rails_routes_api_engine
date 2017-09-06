# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require 'codeclimate-test-reporter'
SimpleCov.minimum_coverage 100
SimpleCov.start do
  add_filter '/test'
end

require File.expand_path("../../test/dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../../db/migrate', __FILE__)
require "rails/test_help"
require 'pry'

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

class ActiveSupport::TestCase
  EXPECTED_ROUTES = [
    {
      :path       => "/some/:id/some_custom_action(.:format)",
      :action     => "some_custom_action",
      :controller => "some"
    },
    {
      :path       => "/some(.:format)",
      :action     => "index",
      :controller => "some"
    },
    {
      :path       => "/some(.:format)",
      :action     => "create",
      :controller => "some"
    },
    {
      :path       => "/some/new(.:format)",
      :action     => "new",
      :controller => "some"
    },
    {
      :path       => "/some/:id/edit(.:format)",
      :action     => "edit",
      :controller => "some"
    },
    {
      :path       => "/some/:id(.:format)",
      :action     => "show",
      :controller => "some"
    },
    {
      :path       => "/some/:id(.:format)",
      :action     => "update",
      :controller => "some"
    },
    {
      :path       => "/some/:id(.:format)",
      :action     => "update",
      :controller => "some"
    },
    {
      :path       => "/some/:id(.:format)",
      :action     => "destroy",
      :controller => "some"
    },
    {
      :path       => "/another/:id/another_custom_action(.:format)",
      :action     => "another_custom_action",
      :controller => "another"
    },
    {
      :path       => "/another(.:format)",
      :action     => "index",
      :controller => "another"
    },
    {
      :path       => "/another(.:format)",
      :action     => "create",
      :controller => "another"
    },
    {
      :path       => "/another/new(.:format)",
      :action     => "new",
      :controller => "another"
    },
    {
      :path       => "/another/:id/edit(.:format)",
      :action     => "edit",
      :controller => "another"
    },
    {
      :path       => "/another/:id(.:format)",
      :action     => "show",
      :controller => "another"
    },
    {
      :path       => "/another/:id(.:format)",
      :action     => "update",
      :controller => "another"
    },
    {
      :path       => "/another/:id(.:format)",
      :action     => "update",
      :controller => "another"
    },
    {
      :path       => "/another/:id(.:format)",
      :action     => "destroy",
      :controller => "another"
    },
    {
      :path=>"/assets",
      :action=>nil,
      :controller=>nil
    },
    {
      :path=>"/cable",
      :action=>nil,
      :controller=>nil
    },
    {
      :path=>"/",
      :action=>nil,
      :controller=>nil
    }
  ].freeze
end

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end
