# Takes the routes defined in the application and converts to a list of hashes,
#   where each Hash has the Route's:
#     - path
#     - action
#     - controller
module RouteDataService
  def self.get_routes_data
    Rails.application.routes.routes.select do |route|
      !route.defaults[:internal]
    end.map do |route|
      {
        path: route.path.spec.to_s,
        action: route.defaults[:action],
        controller: route.defaults[:controller]
      }
    end.select do |route_data|
      route_data.values.map(&:present?).all?
    end
  end
end
