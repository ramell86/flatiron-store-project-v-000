class SessionsController < ApplicationController

  def new

  end

  def create
    session[:email] = params[:email]
    redirect to '/'
  end
end
