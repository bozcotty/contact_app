class CreateAlienProbeDoctors < ActiveRecord::Migration
  def change
    create_table :alien_probe_doctors do |t|
      t.string :name

      t.timestamps
    end
  end
end
