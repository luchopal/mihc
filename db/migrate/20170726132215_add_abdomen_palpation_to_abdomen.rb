class AddAbdomenPalpationToAbdomen < ActiveRecord::Migration[5.0]
  def change
    add_column :abdomen, :abdomen_palpation, :string
  end
end
