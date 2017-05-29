class CreateCervicalExaminations < ActiveRecord::Migration[5.0]
  def change
    create_table :cervical_examinations do |t|
      t.column :physical_exam_id, :integer
      t.column :lateral_tumor, :boolean
      t.column :left_lateral_tumor, :boolean
      t.column :right_lateral_tumor, :boolean
      t.column :tumor_description, :string
      t.column :central_tumor, :boolean
      t.column :central_tumor_description, :string
      t.timestamps
    end
  end
end
