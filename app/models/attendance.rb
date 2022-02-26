class Attendance < ApplicationRecord
    after_create :new_participant_send
    # belongs_to :user
    belongs_to :participant, class_name: "User"

    belongs_to :event


    ## todo : verifier qu'ici on passe bien en aparemetre le user qui s'est enregistrer a l'event 
    def new_participant_send
        UserMailer.well_registered(self.participant).deliver_now
    end

end
