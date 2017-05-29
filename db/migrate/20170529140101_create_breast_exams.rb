class CreateBreastExams < ActiveRecord::Migration[5.0]
  def change
    create_table :breast_exams do |t|
      t.column :physical_exam_id, :integer
      t.column :left_breast_first_quadrant, :boolean
      t.column :left_breast_second_quadrant, :boolean
      t.column :left_breast_third_quadrant, :boolean
      t.column :left_breast_fourth_quadrant, :boolean
      t.column :left_breast_center, :boolean
      t.column :right_breast_first_quadrant, :boolean
      t.column :right_breast_second_quadrant, :boolean
      t.column :right_breast_third_quadrant, :boolean
      t.column :right_breast_fourth_quadrant, :boolean
      t.column :right_breast_center, :boolean
      t.column :breast_description, :string
      t.column :right_armpit, :boolean
      t.column :left_armpit, :boolean
      t.timestamps
    end
  end
end
