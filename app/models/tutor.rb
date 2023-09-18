# frozen_string_literal: true

# This is a class Tutor, model which has atleast one course
class Tutor < ApplicationRecord
  belongs_to :course

  validates :first_name, presence: true
  validates :last_name, presence: true
end
