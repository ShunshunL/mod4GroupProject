class Like < ApplicationRecord
  belongs_to :likable, polymorphic: true
  # validates :profile_id, uniqueness: true 
  # maybe bypass validate on the frontend, but just to be secure 
  # delegate: profile, to: :posts



end
