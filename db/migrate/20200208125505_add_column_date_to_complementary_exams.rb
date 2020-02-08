class AddColumnDateToComplementaryExams < ActiveRecord::Migration[5.0]
  def change
    add_column :complementary_exams, :date, :date
  end
end
