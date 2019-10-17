class Api::V1::AuthController < ApplicationController
    skip_before_action

    def login
        admin = Admin.find_by(username: params[:username])
        if(admin && admin.authenticate(params[:password]))
         encoded_token = encode_token(user_payload(admin))
         render json: {token: encoded_token}
        else 
            render json: {message:"Sorry, wrong Username or Password"}
        end
    
    end

end
