class AddProbToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :prob, :integer
  end
end
