class CreateOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :offices do |t|
      t.string :author
      t.string :quote

      t.timestamps
    end
  end
end
