class CreateJoinTableUserList < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Users, :Lists do |t|
      # t.index [:user_id, :list_id]
      # t.index [:list_id, :user_id]
    end
  end
end
