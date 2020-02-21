class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
