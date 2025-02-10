# Takes the routes defined in the application and converts to a list of hashes,
#   where each Hash has the Route's:
#     - path
#     - action
#     - controller
module RouteDataService
  def self.get_routes_data
    main_app_routes = format_routes(Rails.application.routes.routes)

    engines = RailsRoutesApiEngine.configuration.engines || []
    engines_routes = engines.flat_map do |engine|
      format_routes(engine::Engine.routes.routes, engine)
    end

    main_app_routes + engines_routes
  end

  def self.format_routes(routes, engine = nil)
    routes.select do |route|
      !route.defaults[:internal]
    end.map do |route|
      {
        path: "#{engine_route_prefix(engine)}#{route.path.spec.to_s}",
        action: route.defaults[:action],
        controller: route.defaults[:controller]
      }
    end
  end

  def self.engine_route_prefix(engine)
    return "" unless engine

    "/#{engine.to_s.underscore}"
  end
end
