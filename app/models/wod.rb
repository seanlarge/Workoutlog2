class Wod < ActiveRecord::Base

  belongs_to :athlete
  has_many :wod_movements
  has_many :movements, through: :wod_movements

end
