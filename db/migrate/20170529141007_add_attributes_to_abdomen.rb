class AddAttributesToAbdomen < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_exams, :activate_cervical_examination, :boolean
    add_column :physical_exams, :activate_breast_exam, :boolean
    add_column :physical_exams, :activate_skin_lesion, :boolean
  end
end
