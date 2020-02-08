class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :wkname
      t.text :wkdesc

      t.timestamps
    end
  end
end
