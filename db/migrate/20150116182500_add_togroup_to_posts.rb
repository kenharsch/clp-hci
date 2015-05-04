class AddTogroupToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :togroup, :boolean
  end
end
