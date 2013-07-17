class CreateStorycreatorAlgorithms < ActiveRecord::Migration
  def change
    create_table :storycreator_algorithms do |t|
      t.integer :id
      t.string :identifier
      t.string :server
      t.string :database
      t.text :tables
      t.string :anchor

      t.timestamps
    end
  end
end
