require 'pry'
class SessionsController < ApplicationController
  before_action :require_login
  def create
    session[:name]=params[:name]
    render :welcome
  end

  def destroy
    session[:name]=nil
    redirect_to '/'
  end
  private

  def require_login
    return redirect_to '/' if (!params.include? :name) || params[:name]==""
  end
end
