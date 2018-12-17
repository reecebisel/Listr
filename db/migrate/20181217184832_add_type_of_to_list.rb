class AddTypeOfToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :type_of, :string
  end
end
