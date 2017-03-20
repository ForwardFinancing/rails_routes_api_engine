class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_dummyness

  def set_dummyness
    # We need to test that the engine controllers extend the consuming app's
    #   application controller. This header can be checked to confirm.
    response.headers['Dummy-Disposition'] = 'The Dumbest'
  end
end
