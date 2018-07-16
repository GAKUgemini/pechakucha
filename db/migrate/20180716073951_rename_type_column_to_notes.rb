class RenameTypeColumnToNotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :notes, :type, :genre
  end
end
