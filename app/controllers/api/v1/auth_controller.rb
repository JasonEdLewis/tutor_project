class Api::V1::AuthController < ApplicationController
    skip_before_action :verify_authenticity_token

    def login
        is_authenticated = nil
        admin = Admin.find_by(username: params[:username])
      
       
        if admin && admin.authenticate(params[:password])
            
            payload = { admin_id: admin.id }
            token = JWT.encode payload, 'sin-city' ,'HS256'

            render json: {token: token }
        else 
            render json: {error: "Please enter valid Email or Password..."}
        end
    end

end
