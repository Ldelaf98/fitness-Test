class AddUidToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :uid, :string
  end
end
