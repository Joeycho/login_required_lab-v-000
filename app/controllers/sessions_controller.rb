class SessionsController < ApplicationController
  before_action :require_login
  def create
    session[:name]=params[:name]
  end

  private

  def require_login
    return redirect_to '/' unless params.include? :name && params[:name]==""
  end
end
