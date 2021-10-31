class Office < ApplicationRecord
    validates :building_name, presence: true
    validates :floor_number, :room_number, numericality: { only_integer: true }, presence: true
    validates :room_number, length: {minimum: 3, maximum: 8}
    has_one :teacher
    # fields: "office.building_name", "office.floor_number", "office.room_number"
    def office_location
        "#{building_name} #{room_number}"
    end
end
