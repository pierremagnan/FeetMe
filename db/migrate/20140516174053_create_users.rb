class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_admin
      t.string :password_view
      t.integer :birthyear
      t.string :gender
      t.decimal :size
      t.integer :feetsize
      t.integer :weight

      t.timestamps
    end
  end
end
