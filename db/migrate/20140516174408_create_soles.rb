class CreateSoles < ActiveRecord::Migration
  def change
    create_table :soles do |t|
      t.boolean :left
      t.boolean :activated

      t.timestamps
    end
  end
end
