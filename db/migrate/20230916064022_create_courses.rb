# frozen_string_literal: true

# Migration for courses table with one attribute name as string
class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name

      t.timestamps
    end
  end
end
