class Course < ApplicationRecord
  belongs_to :teacher
  has_many :section
  def prefix_and_number
    "#{prefix} #{number}"
  end
end
