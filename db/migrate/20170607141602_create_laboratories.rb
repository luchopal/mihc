class CreateLaboratories < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratories do |t|
      t.column :medical_consultation_id, :integer
      t.column :laboratory_type, :string
      t.column :date, :date
      t.column :comment, :string
      t.timestamps
    end
  end
end
