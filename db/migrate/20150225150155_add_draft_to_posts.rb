class AddDraftToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :draft, :text
  end
end
