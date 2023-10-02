module CurrentUserConcern 
    extent ActiveSupport::CurrentUserConcern
    included do
        before_action :set_current_user
    end
    def set_current_user
        if session [:user_id]
            @current_user = User.find(session[:user.id])
        end
    end
end