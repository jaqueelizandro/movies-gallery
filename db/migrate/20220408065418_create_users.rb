class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.boolean :admin
      t.text :name
      t.text :last_name

      t.timestamps
    end
  end
end
