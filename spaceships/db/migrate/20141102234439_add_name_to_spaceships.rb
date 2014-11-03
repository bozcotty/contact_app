class AddNameToSpaceships < ActiveRecord::Migration
  def change
    add_column :spaceships, :name, :string
  end
end
