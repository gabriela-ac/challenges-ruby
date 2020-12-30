class AddAttributesToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :abstract, :string
    add_column :books, :genre, :string
  end
end
