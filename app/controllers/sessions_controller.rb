require 'pry'
class SessionsController < ApplicationController
  before_action :require_login
  def create
    session[:name]=params[:name]
    render :welcome
  end

  def destroy
    binding.pry
    session.delete :name
    redirect_to '/'
  end
  private

  def require_login
    return redirect_to '/' if (!params.include? :name) || params[:name]==""
  end
end
