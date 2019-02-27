require 'pry'
class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only:[:destroy]
  def create
    session[:name]=params[:name]
    render :welcome
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
  private

  def require_login
    binding.pry
    return redirect_to '/' if (!params.include? :name) || params[:name]==""
  end
end
