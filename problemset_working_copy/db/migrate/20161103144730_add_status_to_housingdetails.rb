class AddStatusToHousingdetails < ActiveRecord::Migration[5.0]
  def change
    add_column :housingdetails, :status, :string
  end
end
