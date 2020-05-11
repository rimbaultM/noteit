class AddRefToNotes < ActiveRecord::Migration[6.0]
  def change
        add_reference :notes, :notegroup, foreign_key: true
        add_reference :notes, :user, foreign_key: true

  end
end
