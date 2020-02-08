class Measurement < ActiveRecord::Base
    def self.update_measurment(id, weight, body_fat, height)
        measurement = Measurement.find(id)
        measurement.update(weight: weight, body_fat: body_fat, height: height)
    end
    
    def self.delete_measurement(id)
        measurement = find(id)
        measurement.destroy
    end
end
