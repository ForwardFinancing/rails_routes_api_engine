require 'test_helper'

class RailsRoutesApiEngine::RoutesControllerTest < ActionController::TestCase
  def setup
    @routes = RailsRoutesApiEngine::Engine.routes
  end

  def test_index
    # Get the routes index
    get :index

    # Confirm that the engine's application controller includes the consuming
    #   app's application controller
    assert_equal(
      response.headers['Dummy-Disposition'],
      'The Dumbest'
    )

    # Test the response
    actual = JSON.parse(response.body)
    expected = EXPECTED_ROUTES.map(&:with_indifferent_access)
    assert_equal(actual - expected, [])
    assert_equal(expected - actual, [])
  end
end
