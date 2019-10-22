class Api::V1::AuthController < ApplicationController
    skip_before_action :verify_authenticity_token

    def login
        is_authenticated = nil
        admin = Admin.find_by(username: params[:username])
        is_authenticated = admin.authenticate(params[:password])
       
        if is_authenticated
            
            payload = { admin_id: admin.id }
            token = JWT.encode payload, 'sin-city' ,'HS256'

            render json: {token: token }
        else 
            render json: {message: "Please enter valid..."}
        end
    end

end
