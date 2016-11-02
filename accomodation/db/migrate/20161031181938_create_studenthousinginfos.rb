class CreateStudenthousinginfos < ActiveRecord::Migration[5.0]
  def change
    create_table :studenthousinginfos do |t|
      t.integer :version
      t.string :category
      t.integer :roomsize
      t.integer :rent
      t.text :detail
      t.timestamps
    end
  end
end
