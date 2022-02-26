class Event < ApplicationRecord
    before_validation :right_price, :must_be_futur, :right_duration
    has_many :attendances
    has_many :participants, class_name: "User", through: :attendances
    belongs_to :admin, class_name: "User", optional: true

    after_create :new_participant_send
    def right_duration
        if self.duration % 5 != 0
            errors.add(:duration, "must be multiple of 5")
        end
        if self.duration < 0
            errors.add(:duration, "must be greater than 0")
        end
    end
    def right_price
        if self.price <= 0
            errors.add(:price, "must be between 1 and 1000")
        end
        if self.price > 1000
            errors.add(:price, "must be between 1 and 1000")
        end
    end
    def must_be_futur 
        if self.start_date < Time.now
            errors.add(:start_date, "must be in future")
        end
    end

    ## todo : verifier qu'ici on passe bien en aparemetre le user qui s'est enregistrer a l'event 
    def new_participant_send
        UserMailer.well_registered(self.participant).deliver_now
    end


end
