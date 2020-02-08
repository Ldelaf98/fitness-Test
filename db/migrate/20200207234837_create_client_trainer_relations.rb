class CreateClientTrainerRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :client_trainer_relations do |t|

      t.timestamps
    end
  end
end
