class ApplicationController < ActionController::Base

    def encode_token (payload)
        JWT.encode payload, 'hexidecimal', 'HS256'
    end

    def admin_payload(admin)
        {admin_id: admin.id}
    end

    def token 
      request.headers["Authorization"]
    end

    def decoded_token
        #   byebug
       JWT.decode token, 'hexidecimal', true , { algorithm: 'HS256'} 
    end

    def current_admin
        Admin.find( decoded_token[0]["admin_id"])
    end

end
