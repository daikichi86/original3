class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name,              null: false
      t.text :info,              null: false
      t.integer :category_id, null: false
      t.integer :country_id, null: false

      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
