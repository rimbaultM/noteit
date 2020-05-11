class AddRefToNotegroups < ActiveRecord::Migration[6.0]
  def change
    add_reference :notegroups, :user, foreign_key: true
  end
end
