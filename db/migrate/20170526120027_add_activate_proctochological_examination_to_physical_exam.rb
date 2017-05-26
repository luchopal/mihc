class AddActivateProctochologicalExaminationToPhysicalExam < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_exams, :activate_proctochological_examination, :boolean
  end
end
