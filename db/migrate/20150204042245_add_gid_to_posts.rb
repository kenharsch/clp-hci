class AddGidToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :gid, :integer
  end
end
