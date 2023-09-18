# frozen_string_literal: true

Rails.application.routes.draw do
  # route for getting all courses along with their tutors
  get 'courses/all', to: 'courses#index'

  # common route for saving courses along with tutors
  post 'courses/create', to: 'courses#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
