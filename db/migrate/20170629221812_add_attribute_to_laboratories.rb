class AddAttributeToLaboratories < ActiveRecord::Migration[5.0]
  def change
      remove_column :laboratories, :laboratory_type
      remove_column :laboratories, :comment
      add_column :laboratories, :hto, :string
      add_column :laboratories, :hb, :string
      add_column :laboratories, :gb, :string
      add_column :laboratories, :gluc, :string
      add_column :laboratories, :urea, :string
      add_column :laboratories, :creat, :string
      add_column :laboratories, :tgo, :string
      add_column :laboratories, :tgp, :string
      add_column :laboratories, :fal, :string
      add_column :laboratories, :amilasa, :string
      add_column :laboratories, :bt, :string
      add_column :laboratories, :bd, :string
      add_column :laboratories, :prot_tot, :string
      add_column :laboratories, :alb, :string
      add_column :laboratories, :na, :string
      add_column :laboratories, :k, :string
      add_column :laboratories, :plaq, :string
      add_column :laboratories, :conc_pt, :string
      add_column :laboratories, :cea, :string
      add_column :laboratories, :ca199, :string
      add_column :laboratories, :ca124, :string
  end
end
