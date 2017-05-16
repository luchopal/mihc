class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.column :name, :string
      t.column :surname, :string
      t.column :document_number, :string
      t.column :associate_number, :string
      t.column :birth_date, :date
      t.column :sex, :string
      t.column :country_code, :string
      t.column :marital_status, :string
      t.column :city, :string
      t.column :phone, :string
      t.column :close_person_phone, :string
      t.column :job, :string
      t.timestamps
    end
  end
end
