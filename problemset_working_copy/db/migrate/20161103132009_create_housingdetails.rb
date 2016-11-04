class CreateHousingdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :housingdetails do |t|
      t.integer :versionid
      t.string :category
      t.string :size
      t.string :rent
      t.text :details

      t.timestamps
    end
  end
end
