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
    assert_equal(
      JSON.parse(response.body),
      [
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
        }
      ].map(&:with_indifferent_access)
    )
  end
end
