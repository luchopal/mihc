class CreateSkinLesionExams < ActiveRecord::Migration[5.0]
  def change
    create_table :skin_lesion_exams do |t|
      t.column :physical_exam_id, :integer
      t.column :skin_lesion_description, :string
      t.timestamps
    end
  end
end
