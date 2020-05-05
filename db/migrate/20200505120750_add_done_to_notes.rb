class AddDoneToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :done, :boolean, default: false
  end
end
