class CreateAuthors < ActiveRecord::Migration[8.1]
  def change
    create_table :authors do |t|
      t.string :username, null: false, limit: 12
      t.string :email, null: false
      t.string :password, null: false, limit: 16

      t.timestamps
    end
    add_index :authors, :email, unique: true
  end
end
