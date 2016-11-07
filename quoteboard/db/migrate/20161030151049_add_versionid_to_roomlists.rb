class AddVersionidToRoomlists < ActiveRecord::Migration[5.0]
  def change
    add_column :roomlists, :versionid, :int
  end
end
