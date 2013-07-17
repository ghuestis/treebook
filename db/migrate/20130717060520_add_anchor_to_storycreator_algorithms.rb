class AddAnchorToStorycreatorAlgorithms < ActiveRecord::Migration
  def change
    add_column :storycreator_algorithms, :anchor, :string
  end
end
