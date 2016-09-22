require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :entries}
  it { should have_many :meals}
  it { should have_many :exercises}
end
