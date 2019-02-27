class SessionsController < ApplicationController
  def create
    
  end

  private

  def require_login
    return redirect_to '/' unless session.include? :name && session[:name]==""
  end
end
