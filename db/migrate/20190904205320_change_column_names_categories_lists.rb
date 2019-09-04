class ChangeColumnNamesCategoriesLists < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories_lists, :categories_id, :category_id
    rename_column :categories_lists, :lists_id, :list_id
  end
end
