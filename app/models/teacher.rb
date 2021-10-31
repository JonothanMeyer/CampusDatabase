class Teacher < ApplicationRecord
  validates :first_name, :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "No Numbers!" }
  validates :nine_hundred, numericality: { only_integer: true }, length: {is: 9, message: "Must be 9 Numbers"},
   presence: true, uniqueness: true
  validates :email, email: true
  validates :office, presence: true
  belongs_to :office
  has_many :courses
  def full_teacher_name
    "#{first_name} #{last_name}"
  end

end
