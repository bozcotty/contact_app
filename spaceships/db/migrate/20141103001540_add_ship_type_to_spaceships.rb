class AddShipTypeToSpaceships < ActiveRecord::Migration
  def change
    add_column :spaceships, :ship_type, :string
  end
end
