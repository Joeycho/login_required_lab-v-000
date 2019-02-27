require 'pry'
class SessionsController < ApplicationController
  before_action :require_login
#  skip_before_action :require_login, only: [:create]
  def create
    session[:name]=params[:name]
  end

  private

  def require_login
    return redirect_to '/' if (!params.include? :name) || params[:name]==""
  end
end
