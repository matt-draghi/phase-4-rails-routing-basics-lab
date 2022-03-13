class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        render json: Student.order(grade: :desc)
    end

    def highest_grade
        # byebug
        students = Student.order(grade: :desc)
        render json: students.first
    end

end
