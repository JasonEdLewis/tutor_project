class InstructorsController < ApplicationController
    skip_before_action :verify_authenticity_token
   


    def index
        instructors = Instructor.all 
        render json: instructors, except: [:created_at, :updated_at]
    end

    def show
        instructor = Instructor.find(params[:id])
        render json: instructor, except: [:created_at, :updated_at]
    end

    def create
        instructor = Instructor.create(instructor_params)
        if instructor.valid?
            instructor.save
        render json: instructor
        else
            render json: {message: "Incomplete form"}
        end
    end


    def edit
        instructor = Instructor.find(params[:id])
    end 

    def update 
        instructor = Instructor.find_by(id: params[:id])
        instructor.update(instructor_params)
        render json: instructor, except: [:created_at, :updated_at]
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
    end

        private

        def instructor_params
            params.require(:instructor).permit(:name,:subject,:specialty,:hours)
        end

        def update_instructor_params
            params.permit(:id,:name,:subject,:specialty,:hours)
        end


end


