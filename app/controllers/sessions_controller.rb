class SessionsController < ApplicationController

    def index
        sessions = Session.all
        render json: sessions.to_json(:include => {:student => {:except =>[:updated_at, :created_at]}, :instructor => {:except =>[:updated_at, :created_at]}, :admin=> {:except =>[:updated_at, :created_at, :password_digest]}}, :except => [:updated_at, :created_at])
    end

end
