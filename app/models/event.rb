class Event < ApplicationRecord

    has_many :attendances
    has_many :participants, class_name: "User", through: :attendances
    belongs_to :admin, class_name: "User", optional: true

end
