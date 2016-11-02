class AddStatusToStudenthousinginfos < ActiveRecord::Migration[5.0]
  def change
    add_column :studenthousinginfos, :status, :string
  end
end
