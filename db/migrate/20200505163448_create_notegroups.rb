class CreateNotegroups < ActiveRecord::Migration[6.0]
  def change
    create_table :notegroups do |t|
      t.string :title

      t.timestamps
    end
  end
end
