class AddActivateInguinocruralExaminationToPhysicalExam < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_exams, :activate_inquinocrural_examination, :boolean
  end
end
