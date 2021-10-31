class Section < ApplicationRecord
  validates :year, numericality: { only_integer: true }, length: {is: 4, message: "Not a Valid Year"},
   presence: true
  validates :semester, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Spring - Summer - Fall" }
  belongs_to :course
  # fields: "section.year", "section.semester", "course.prefix_and_number"
  def semester_year
    "#{semester} #{year}"
  end
end
