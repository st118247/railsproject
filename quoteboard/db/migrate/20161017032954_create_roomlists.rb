class CreateRoomlists < ActiveRecord::Migration[5.0]
  def change
    create_table :roomlists do |t|
      t.string :cat
      t.string :dorm
      t.string :room
      t.string :abc
      t.string :studentid
      t.string :status

      t.timestamps
    end
  end
end
