class Course < ApplicationRecord
  # fields: "course.prefix", "course.number", "course.description", "course.teacher.full_teacher_name"
  validates :prefix, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "No Numbers!" }
  validates :number, numericality: { only_integer: true }, presence: true
  validates :description, length: { minimum: 10 }
  validates :description, length: { maximum: 500, message: "Can be no longer than 500 characters" }
  belongs_to :teacher
  has_many :section
  def prefix_and_number
    "#{prefix} #{number}"
  end
end
