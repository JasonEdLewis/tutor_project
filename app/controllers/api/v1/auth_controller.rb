class Api::V1::AuthController < ApplicationController
    skip_before_action :verify_authenticity_token

    def login
        # byebug
        admin = Admin.find_by(username: params[:username])
        # byebug
        if (admin && admin.authenticate(params[:password]))
            
            payload = { admin_id: admin.id }
            token = JWT.encode payload, 'sin-city' ,'HS256'

            render json: {token: token }
        else 
            render json: {message: "Please enter valid username or password."}
        end
    end

end
