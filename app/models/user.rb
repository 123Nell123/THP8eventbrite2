class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    after_create :welcome_send
    has_many :attendances

    has_many :events, through: :attendances

# photo de profil
has_one_attached :avatar

  # Events créés par l'utilisateur
    has_many :created_events, class_name: "Event"
    def welcome_send
        UserMailer.welcome_email(self).deliver_now
      end
end
