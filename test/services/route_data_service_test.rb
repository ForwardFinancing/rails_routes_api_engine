class RouteDataServiceTest < ActiveSupport::TestCase


  def test_it
    assert_equal(RouteDataService.get_routes_data - EXPECTED_ROUTES, [])
    assert_equal(EXPECTED_ROUTES - RouteDataService.get_routes_data, [])
  end
end
