class CreateNotecomments < ActiveRecord::Migration[5.2]
  def change
    create_table :notecomments do |t|
      t.text :body
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
