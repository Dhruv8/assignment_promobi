# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Course, type: :model do
  before(:all) do
    @course1 = FactoryBot.create(:course)
  end

  it { should validate_presence_of(:name) }

  it 'is valid with valid attributes' do
    expect(@course1).to be_valid
  end

  it 'should have many Tutors' do
    t = Course.reflect_on_association(:tutors)
    expect(t.macro).to eq(:has_many)
  end
end
