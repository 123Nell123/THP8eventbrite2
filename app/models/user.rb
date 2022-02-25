class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :attendances

    has_many :events, through: :attendances
    
  # Events créés par l'utilisateur
    has_many :created_events, class_name: "Event"
end
