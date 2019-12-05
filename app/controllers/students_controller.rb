class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token

        def index
            students = Student.all 
            render json: students.to_json(:include => {:sessions => {:except =>[:updated_at, :created_at]},:instructors => {:except =>[:updated_at, :created_at]}},:except => [:updated_at, :created_at])
        end
        def show
            student = Student.find(params[:id])
            render json: student.to_json(:include => {:sessions => {:except =>[:updated_at, :created_at]},
            :admins => {:except =>[:updated_at, :created_at,:password_digest]},
            :instructors => {:except =>[:updated_at, :created_at]}},:except => [:updated_at, :created_at])
        end

        def create
            student = Student.create(student_params)
            if student.valid?
                student.save
                render json: student
            else
                render json: {message: "Incomplete Student"}
            end
        end

        def upadate
            student = Student.find_by(id: params[:id])
            student.valid?
              student.upadate(update_params)
              render json: student
            else
                render json: {message: "This student could not be found..."}
            end
        end

        private

        def student_params
            params.require(:student).permit(:name,:school_id,:reason,:date,:hours,:school,:grade,:sped,:counselor_info,:guardian,:address,:home_no,:cell,:email,:subject)
        end

        def update_params
            params.permit(:id,:name,:school_id,:reason,:date,:hours,:school,:grade,:sped,:counselor_info,:guardian,:address,:home_no,:cell,:email,:subject)
        end
end

