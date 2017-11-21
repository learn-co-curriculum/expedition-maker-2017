class ExpeditionEquipment < ApplicationRecord
  belongs_to :expedition
  belongs_to :equipment
end
