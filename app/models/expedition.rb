class Expedition < ApplicationRecord
    has_many :expedition_equipments
    has_many :equipment, through: :expedition_equipments

    accepts_nested_attributes_for :equipment

    def equipment_attributes=(equipment_attributes)
        equipment_attributes.each do |key, value|
            if !value[:name].empty?
                if new_item = Equipment.find_by(name: value[:name])
                    self.equipment << new_item
                else
                    self.equipment.build(name: value[:name])
                end
            end
        end
    end
end