class CreateEvolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :evolutions do |t|
      t.string :description
      t.integer :medical_consultation_id
      t.column :date, :date

      t.timestamps
    end
  end
end
