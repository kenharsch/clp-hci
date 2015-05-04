class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :user_name, :string
    add_column :posts, :user_nickname, :string
  end
end
