class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token
        def show
            student = Student.find(params[:id])
            render json: student.to_json(:except => [:updated_at, :created_at])
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

        private
        def student_params
            params.require(:student).permit(:name,:school_id,:reason,:date,:hours,:school,:grade,:sped,:counselor_info,:guardian,:address,:home_no,:cell,:email)
        end
end

