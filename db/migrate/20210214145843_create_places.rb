class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      
      t.timestamps
    end
  end
end
