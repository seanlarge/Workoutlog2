class Movement < ActiveRecord::Base
has_and_belongs_to_many :wod
has_many :wod_movements
end
