# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Course', type: :request do
  describe 'GET /courses/all' do
    before do
      FactoryBot.create(:course)
      get 'http://localhost:3000/courses/all'
    end

    it 'returns all courses' do
      expect(json.size).to be > 1
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
