module Api
    class UsersController < ApplicationController
        before_filter :authenticate_user_from_token!
        def index
            if current_user
                render json: {auth: true}, root: false
            else
                render json: {}, status: :unauthorized
            end
        end
    end
end
