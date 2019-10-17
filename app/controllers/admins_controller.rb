class AdminsController < ApplicationController
    skip_before_action :verify_authenticity_token


    def index
        admins = Admin.all 
        render json: admins
    end

    
    def show
        admin = Admin.find(params[:id])
        render json: admin
    end

    def create
        admin = Admin.create(admin_params)
        # byebug
        if admin.valid?
            admin.save
            render json: admin, except: [:created_at,:updated_at ]
        else
            render json: {message: "Please Enter a valid username & password"}
        end
    end


        private

    def admin_params
       params.require(:admin).permit(:username,:password) 
    end

end
