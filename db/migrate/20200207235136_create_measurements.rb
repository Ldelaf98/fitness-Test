class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.string :uid
      t.string :height
      t.string :weight
      t.string :body_fat

      t.timestamps null: false
    end
  end
end
