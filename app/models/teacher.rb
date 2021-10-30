class Teacher < ApplicationRecord
  belongs_to :office
  has_many :courses
  def full_teacher_name
    "#{first_name} #{last_name}"
  end

end
