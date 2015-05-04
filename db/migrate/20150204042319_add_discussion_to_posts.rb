class AddDiscussionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :discussion, :text
  end
end
