class AddAuscultatioTypeToAbdomen < ActiveRecord::Migration[5.0]
  def change
    add_column :abdomen, :auscultation_type, :string
  end
end
