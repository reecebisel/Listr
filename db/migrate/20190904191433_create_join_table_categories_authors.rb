class CreateJoinTableCategoriesAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
    create_table :categories_lists, id: false do |t|
      t.belongs_to :categories
      t.belongs_to :lists
    end
  end
end
