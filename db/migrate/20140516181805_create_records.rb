class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :values

      t.timestamps
    end
  end
end
