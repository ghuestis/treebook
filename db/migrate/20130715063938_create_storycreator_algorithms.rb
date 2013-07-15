class CreateStorycreatorAlgorithms < ActiveRecord::Migration
  def change
    create_table :storycreator_algorithms do |t|
      t.integer :id
      t.string :method_name
      t.string :path
      t.text :description

      t.timestamps
    end
  end
end
