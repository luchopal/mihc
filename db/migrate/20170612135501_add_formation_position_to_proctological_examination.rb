class AddFormationPositionToProctologicalExamination < ActiveRecord::Migration[5.0]
  def change
    add_column :proctochological_examinations, :formation_position, :string
  end
end
