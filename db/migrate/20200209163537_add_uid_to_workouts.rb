class AddUidToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :uid, :string
  end
end
