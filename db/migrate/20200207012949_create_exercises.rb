class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
