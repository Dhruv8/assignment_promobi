# frozen_string_literal: true

FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
  end

  factory :tutor do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    association :course, factory: :course
  end
end
