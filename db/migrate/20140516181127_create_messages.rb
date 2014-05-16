class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.boolean :alert
      t.text :message

      t.timestamps
    end
  end
end
