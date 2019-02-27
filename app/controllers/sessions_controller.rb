require 'pry'
class SessionsController < ApplicationController
  before_action :require_login
  def create
    binding.pry
    session[:name]=params[:name]
  end

  private

  def require_login
    return redirect_to '/' unless sessions.include? :name && params[:name]==""
  end
end
