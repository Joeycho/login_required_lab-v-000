class SessionsController < ApplicationController
  before_action :require_login
  def create

  end

  private

  def require_login
    return redirect_to '/' unless session.include? :name && session[:name]==""
  end
end
