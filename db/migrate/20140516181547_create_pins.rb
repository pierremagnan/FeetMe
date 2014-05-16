class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.boolean :left
      t.text :coords
      t.text :values

      t.timestamps
    end
  end
end
