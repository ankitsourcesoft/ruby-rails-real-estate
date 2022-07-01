class Proparty < ApplicationRecord
     mount_uploader :photo, PhotoUploader
     belongs_to :account, :optional => true
     scope :latest, -> { order created_at: :desc } 
     has_one_attached :image
end