class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.integer :trainer_user_id
      t.integer :client_user_id
    end
  end
end
