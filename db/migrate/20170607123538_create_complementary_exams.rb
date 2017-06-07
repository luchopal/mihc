class CreateComplementaryExams < ActiveRecord::Migration[5.0]
  def change
    create_table :complementary_exams do |t|
      t.column :medical_consultation_id, :integer
      t.column :complementary_exam_type, :string
      t.column :comment, :string
      t.timestamps
    end
  end
end
