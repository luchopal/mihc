class CreateInguinocruralExaminations < ActiveRecord::Migration[5.0]
  def change
    create_table :inguinocrural_examinations do |t|
      t.column :physical_exam_id, :integer
      t.column :left_reductible_inguinal_hernia, :boolean
      t.column :right_reductible_inguinal_hernia, :boolean
      t.column :left_coercible_inguinal_hernia, :boolean
      t.column :right_coercible_inguinal_hernia, :boolean
      t.column :left_reductible_crural_hernia, :boolean
      t.column :right_reductible_crural_hernia, :boolean
      t.column :left_coercible_crural_hernia, :boolean
      t.column :right_coercible_crural_hernia, :boolean
      t.timestamps
    end
  end
end
