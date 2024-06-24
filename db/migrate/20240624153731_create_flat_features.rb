class CreateFlatFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :flat_features do |t|
      t.references :flat, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
