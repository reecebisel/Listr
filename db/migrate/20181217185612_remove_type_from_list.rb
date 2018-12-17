class RemoveTypeFromList < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :type, :string
  end
end
