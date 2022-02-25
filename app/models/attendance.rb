class Attendance < ApplicationRecord
    # belongs_to :user
    belongs_to :participant, class_name: "User"

    belongs_to :event
end
