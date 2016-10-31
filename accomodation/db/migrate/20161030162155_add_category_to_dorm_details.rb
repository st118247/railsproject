class AddCategoryToDormDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :dorm_details, :category, :string
  end
end
