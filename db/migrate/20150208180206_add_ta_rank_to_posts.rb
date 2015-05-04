class AddTaRankToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :ta_rank, :integer
  end
end
