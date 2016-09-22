require 'rails_helper'

RSpec.describe Entry, type: :model do
  it { should belong_to :user}
  it { should have_one :meal}
  it { should have_one :exercise}
end
