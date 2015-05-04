class AddFinalToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :final, :boolean
  end
end
