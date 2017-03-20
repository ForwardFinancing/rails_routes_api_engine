module RailsRoutesApiEngine
  class RoutesController < ApplicationController
    def index
      render json: RouteDataService.get_routes_data.to_json
    end
  end
end
