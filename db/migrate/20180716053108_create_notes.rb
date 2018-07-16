class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :type
      t.string :title
      t.string :contents

      t.timestamps
    end
  end
end
