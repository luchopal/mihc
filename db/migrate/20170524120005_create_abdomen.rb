class CreateAbdomen < ActiveRecord::Migration[5.0]
  def change
    create_table :abdomen do |t|
      t.column :physical_exam_id, :integer

      t.column :inspection, :boolean
      t.column :plane, :boolean
      t.column :spherical, :boolean
      t.column :relaxed, :boolean
      t.column :asymmetric, :boolean
      t.column :umbilical_hernia, :boolean
      t.column :eventration, :boolean
      t.column :location, :string
      t.column :size, :string
      t.column :scar, :boolean
      t.column :msu, :boolean
      t.column :miu, :boolean
      t.column :xp, :boolean
      t.column :mc_burney, :boolean
      t.column :kocher, :boolean
      t.column :pfannenstiel, :boolean
      t.column :others, :boolean
      t.column :others_description, :string

      t.column :palpation, :boolean
      t.column :soft, :boolean
      t.column :uptight, :boolean
      t.column :painful, :boolean
      t.column :superficial_pain, :string
      t.column :deep_pain, :string
      t.column :defence, :string
      t.column :peritoneal_reaction, :string

      t.column :percussion, :boolean
      t.column :bloat, :string

      t.column :auscultation, :string
      t.column :auscultation_location, :string

      t.timestamps
    end
  end
end
