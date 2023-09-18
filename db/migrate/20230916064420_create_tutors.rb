# frozen_string_literal: true

# Migration for tutor table with two attributes first_name as last_name as strings
class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :first_name
      t.string :last_name
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
