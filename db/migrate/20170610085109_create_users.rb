class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :image
      t.string :email
      t.string :password_digest
      t.integer :devid

      t.timestamps
    end
  end
end
