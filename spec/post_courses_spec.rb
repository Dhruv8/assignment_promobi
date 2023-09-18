# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Course', type: :request do
  describe 'POST /create/course' do
    context 'with valid parameters' do
      let!(:my_course) { FactoryBot.create(:course) }

      before do
        post 'http://localhost:3000/courses/create', params:
                          { course: { name: my_course.name,
                                      tutors_attributes: [
                                        {
                                          first_name: 'Dhruv',
                                          last_name: 'sharma'
                                        }
                                      ] } }
      end

      it 'returns the name' do
        expect(json['data']['course']['name']).to eq(my_course.name)
      end

      it 'returns the tutors' do
        expect(json['data']['tutors_attributes']).to be_present
      end

      it 'returns a http status' do
        expect(response).to have_http_status(200)
      end
    end

    context 'with invalid parameters' do
      before do
        post 'http://localhost:3000/courses/create', params:
                          {
                            course: { name: '' }
                          }
      end

      it 'returns a unprocessable entity status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
