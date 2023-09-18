# frozen_string_literal: true

# This is a class course, model and has a relationship with tutors
class Course < ApplicationRecord
  has_many :tutors, dependent: :destroy
  accepts_nested_attributes_for :tutors

  validates :name, presence: true
end
