class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authorize_admin!
        unless current_user.admin?
            flash[:alert] = "Para acceder debes ser Administrador"
            redirect_to root_path
        end
    end
end
