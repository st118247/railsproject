class AddBanstatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :banstatus, :string
  end
end
