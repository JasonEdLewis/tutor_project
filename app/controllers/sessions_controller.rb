class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def index
        sessions = Session.all
        render json: sessions.to_json(:include => {:student => {:except =>[:updated_at, :created_at]}, :instructor => {:except =>[:updated_at, :created_at]}, :admin=> {:except =>[:updated_at, :created_at, :password_digest]}}, :except => [:updated_at, :created_at])
    end

    def show
        session = Session.find(params[:id])
        render json: session.to_json(:include => {:student => {:except =>[:updated_at, :created_at]}, :instructor => {:except =>[:updated_at, :created_at]}, :admin=> {:except =>[:updated_at, :created_at, :password_digest]}}, :except => [:updated_at, :created_at])
    end

    def create
        session = Session.create(session_params)
        if session.valid?
            session.save
            render json: session.to_json(:include => {:student => {:except =>[:updated_at, :created_at]}, :instructor => {:except =>[:updated_at, :created_at]}, :admin=> {:except =>[:updated_at, :created_at, :password_digest]}}, :except => [:updated_at, :created_at])
        else  
            render json: {message: "New Session failed to complete"}
        end
    end

    def update
        session = Session.find(id: params[:id])
        session.update(update_session_params)
        render json: session
    end


    private

    def session_params
    params.require(:session).permit(:student_id,:instructor_id,:admin_id,:date,:time,:home,:subject,:location,:instruction)
    end

    def update_session_params
        params.permit(:student_id,:instructor_id,:admin_id,:date,:time,:home,:subject,:location,:instruction)
        end


end


# student_id
# instructor_id
# admin_id
# date
# time
# home
# subject
# location
# instruction