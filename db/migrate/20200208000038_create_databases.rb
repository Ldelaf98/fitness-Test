class CreateDatabases < ActiveRecord::Migration[6.0]
  def change
    create_table :databases do |t|

      t.timestamps
    end
  end
end
