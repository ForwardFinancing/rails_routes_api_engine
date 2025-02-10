require "rails_routes_api_engine/engine"

module RailsRoutesApiEngine
  def self.configuration
    @configuration ||= OpenStruct.new
  end

  def self.configure
    yield(configuration)
  end
end
