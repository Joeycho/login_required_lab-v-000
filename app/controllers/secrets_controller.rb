class SecretsController < ApplicationController
  before_action :require_login
  def show
    render :show
  end

  private

  def require_login
    return redirect_to '/' unless session.include? :name
  end
end
