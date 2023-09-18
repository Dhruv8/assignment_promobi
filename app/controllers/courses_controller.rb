# frozen_string_literal: true

# Controller class - creating a common endpoint for saving course ans its tutor's
class CoursesController < ApplicationController
  def index
    courses = Course.all.includes(:tutors)
    render json: courses.to_json(include: [:tutors]), status: 200
  end

  def create
    course = Course.new(course_params)
    if course.save
      render json: {  messages: 'Course was successfully created.',
                      is_success: true, status: :created,
                      data: { course: course, tutors_attributes: course.tutors }
                   }
    else
      render json: course.errors, status: :unprocessable_entity
    end
  end

  private

  def course_params
    params.require(:course).permit(
      :name,
      tutors_attributes: [ :first_name, :last_name]
    )
  end
end
