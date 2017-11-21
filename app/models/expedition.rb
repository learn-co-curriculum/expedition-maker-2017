class Expedition < ApplicationRecord
    has_many :expedition_equipments
    has_many :equipment, through: :expedition_equipments

    def equipment=(equipment)
        equipment.each do |item|
            if !item[:name].empty?
                if new_item = Equipment.find_by(name: item[:name])
                    self.equipment << new_item
                else
                    self.equipment.build(name: item[:name])
                end
            end
        end
    end
end
