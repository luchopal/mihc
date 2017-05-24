class CreatePhysicalExams < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_exams do |t|
      t.column :medical_consultation_id, :integer
      t.column :overall_status, :string
      t.column :activate_abdomen, :boolean
      t.timestamps
    end
  end
end
