class Office < ApplicationRecord
    has_one :teacher
    def office_location
        "#{building_name} #{room_number}"
    end
end
