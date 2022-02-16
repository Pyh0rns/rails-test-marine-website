class CreateFormations < ActiveRecord::Migration[6.1]
  def change
    create_table :formations do |t|
      t.string :titre
      t.date :date
      t.integer :prix
      t.integer :nb_pax
      t.string :lieu
      t.text :description

      t.timestamps
    end
  end
end
