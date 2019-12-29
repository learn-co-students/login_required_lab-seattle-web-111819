class SecretsController < ApplicationController
    before_action :login_status

    def show
    end

    private

    def login_status
        redirect_to login_path if !current_user
    end

end