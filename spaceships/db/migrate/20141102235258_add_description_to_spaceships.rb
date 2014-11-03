class AddDescriptionToSpaceships < ActiveRecord::Migration
  def change
    add_column :spaceships, :description, :string
  end
end
