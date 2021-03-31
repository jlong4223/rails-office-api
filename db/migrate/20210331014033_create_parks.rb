class CreateParks < ActiveRecord::Migration[6.1]
  def change
    create_table :parks do |t|
      t.string :author
      t.string :quote

      t.timestamps
    end
  end
end
