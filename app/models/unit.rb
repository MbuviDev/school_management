class Unit < ApplicationRecord
  belong_to :student

  validates :name, presence: true
  validates :grade, presence: true, numericality: { only_integer: true}
end
