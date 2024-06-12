class Student < ApplicationRecord
  has_many :units, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
