class Entry < ApplicationRecord
  belongs_to :user
  has_one :exercise
  has_one :meal
  accepts_nested_attributes_for :meal
  accepts_nested_attributes_for :exercise

  def start_time
    self.created_at
  end
end
