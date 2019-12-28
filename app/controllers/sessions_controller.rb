class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
      # If username is nil or empty, redirect to login page
    else
      session[:name] = params[:name]
      redirect_to '/'
      # redirect_to controller: 'application', action: 'hello'
      # If user logs in,  redirect to welcome page
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
    # redirect_to controller: 'application', action: 'hello'
    # After deleting the user, redirect to login page
  end
end
