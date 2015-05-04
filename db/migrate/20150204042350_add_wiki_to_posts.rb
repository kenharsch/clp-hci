class AddWikiToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :wiki, :boolean
  end
end
