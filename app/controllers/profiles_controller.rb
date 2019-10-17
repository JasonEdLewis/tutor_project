class ProfilesController < ApplicationController

    def show
        render json: {message: "profile show action"}
    end

end
