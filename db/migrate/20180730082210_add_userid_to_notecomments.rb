class AddUseridToNotecomments < ActiveRecord::Migration[5.2]
  def change
    add_column :notecomments, :user_id, :integer
  end
end
