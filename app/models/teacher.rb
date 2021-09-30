class Teacher < ApplicationRecord
  belongs_to :office
  has_many :courses
  def teacher_name
    "#{first_name.first}. #{last_name}"
  end
end
