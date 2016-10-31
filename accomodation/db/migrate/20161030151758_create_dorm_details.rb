class CreateDormDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :dorm_details do |t|
      t.integer :versionid
      t.string :dorm
      t.string :roomsize
      t.text :details
      t.integer :rent
      t.text :comments

      t.timestamps
    end
  end
end
