class Api::V1::AdminsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        admins = Admin.all 
        render json: admins
    end

    def show
        admin = Admin.find(params[:id])
        render json: admin, except: [ :created_at, :updated_at ]
    end

    def create
        admin = Admin.create(admin_params)
      
        if admin.valid?

            payload = {admin_id: admin.id}
            JWT.encode payload, 'sin-city','HS256'
            render json: {token: token}

        else
            render json: {errors: admin.errors.full_messages}
        end
    end

    # def profile
    #     if current_admin
    #     render json: current_admin
    # end
        private

    def admin_params
       params.permit(:username,:password) 
    end

end

