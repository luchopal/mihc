class CreateMedicalConsultations < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_consultations do |t|
      t.column :date, :date
      t.timestamps
    end
  end
end
