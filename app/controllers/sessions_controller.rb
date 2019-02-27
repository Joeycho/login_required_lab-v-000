class SessionsController < ApplicationController

  def current_user
    session[:name]
  end
end
