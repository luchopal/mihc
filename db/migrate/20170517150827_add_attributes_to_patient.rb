class AddAttributesToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :asthma, :boolean
    add_column :patients, :hearth_failure, :boolean
    add_column :patients, :ischemic_heart_disease, :boolean
    add_column :patients, :arteriopathy, :boolean
    add_column :patients, :arterial_hypertension, :boolean
    add_column :patients, :stroke, :boolean
    add_column :patients, :diabetes, :boolean
    add_column :patients, :dyslipidemia, :boolean
    add_column :patients, :renal_insufficiency, :boolean
    add_column :patients, :liver_disease, :boolean
    add_column :patients, :ulcer_disease, :boolean
    add_column :patients, :hematological_disease, :boolean
    add_column :patients, :tuberculosis, :boolean
    add_column :patients, :aids, :boolean
    add_column :patients, :do_drugs, :boolean
    add_column :patients, :alcoholism, :boolean
    add_column :patients, :smoking, :boolean
    add_column :patients, :allergies, :boolean
    add_column :patients, :others, :boolean
    add_column :patients, :others_description, :string

    add_column :patients, :medicines, :string
    add_column :patients, :surgical_history, :string

  end
end

