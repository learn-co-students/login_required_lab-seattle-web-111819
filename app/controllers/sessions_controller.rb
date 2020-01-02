class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            require_login
        else
            session[:name] = params[:name]
            require_login
        end
    end

    def destroy
        session.delete :name
    end
end 