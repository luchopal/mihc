class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :surname, :string
      t.column :password_digest, :string
      t.column :email, :string
      t.timestamps
    end
  end
end