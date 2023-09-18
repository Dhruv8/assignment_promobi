# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tutor, type: :model do
  before(:all) do
    @tutor = FactoryBot.create(:tutor)
  end

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it 'is valid with valid attributes' do
    expect(@tutor).to be_valid
  end

  it 'should have many Tutors' do
    t = Tutor.reflect_on_association(:course)
    expect(t.macro).to eq(:belongs_to)
  end
end
