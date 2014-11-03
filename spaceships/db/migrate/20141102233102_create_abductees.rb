class CreateAbductees < ActiveRecord::Migration
  def change
    create_table :abductees do |t|
      t.string :name

      t.timestamps
    end
  end
end
