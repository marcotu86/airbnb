class RenameFieldInTable < ActiveRecord::Migration[7.1]
  def change
    rename_column :features, :icone, :icon
  end
end
