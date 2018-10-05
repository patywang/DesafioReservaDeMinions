class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_minions

  def current_minions
    @current_minions = Minion.all
  end
end
