class RenameParksQuoteColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :parks, :quote, :character
  end
end
