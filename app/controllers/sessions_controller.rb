class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            set_session
        end
    end

    def destroy
        session.delete :name
        redirect_to '/login'
    end

end