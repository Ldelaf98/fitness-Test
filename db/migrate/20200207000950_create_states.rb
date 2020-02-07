class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|

      t.timestamps null: false
    end
  end
end
