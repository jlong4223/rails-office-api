class CreateSwansons < ActiveRecord::Migration[6.1]
  def change
    create_table :swansons do |t|
      t.string :author
      t.string :quote

      t.timestamps
    end
  end
end
