class CreateProctochologicalExaminations < ActiveRecord::Migration[5.0]
  def change
    create_table :proctochological_examinations do |t|
      t.column :physical_exam_id, :integer
      t.column :sking_lesion, :string
      t.column :hematoma, :string
      t.column :traumatic_injury, :string
      t.column :uncomplicated_hemorrhoids, :string
      t.column :acute_fissure, :string
      t.column :chronic_fissure, :string
      t.column :fistulous_orifice, :string
      t.column :bulging, :string
      t.column :plicoma, :string
      t.column :redness, :string
      t.column :thrombosis_hemorrhoids, :string
      t.column :fluxion_hemorrhoids, :string
      t.column :hemorrhage_hemorrhoids, :string
      t.column :anal_sphincter_tonicity, :string
      t.column :rectal_ampoule, :string
      t.column :occupied_rectal_ampoule, :string
      t.column :formation, :boolean
      t.timestamps
    end
  end
end
