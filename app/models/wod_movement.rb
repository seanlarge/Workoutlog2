class WodMovement < ActiveRecord::Base
  belongs_to :movement
  belongs_to :wod
end
