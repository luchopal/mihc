class CreateRelatives < ActiveRecord::Migration[5.0]
  def change
    create_table :relatives do |t|
      t.column :patient_id, :integer
      t.column :bond, :string
      t.column :status, :string
      t.column :observation, :string
      t.timestamps
    end
  end
end
