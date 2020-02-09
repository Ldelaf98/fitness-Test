class AddUnitCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :category, :string
  end
end
