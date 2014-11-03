class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.datetime :surgery_date

      t.timestamps
    end
  end
end
