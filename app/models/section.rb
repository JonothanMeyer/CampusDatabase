class Section < ApplicationRecord
  belongs_to :course
  def semester_year
    "#{semester} #{year}"
  end
end
