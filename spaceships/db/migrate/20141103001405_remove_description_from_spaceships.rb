class RemoveDescriptionFromSpaceships < ActiveRecord::Migration
  def change
    remove_column :spaceships, :description, :string
  end
end
