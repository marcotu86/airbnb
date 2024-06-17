class CreateFlats < ActiveRecord::Migration[7.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.string :address
      t.float :price_per_night
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
