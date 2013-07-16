class CreateStorycreatorAlgorithmsUses < ActiveRecord::Migration
  def change
    create_table :storycreator_algorithms_uses do |t|

      t.timestamps
    end
  end
end
