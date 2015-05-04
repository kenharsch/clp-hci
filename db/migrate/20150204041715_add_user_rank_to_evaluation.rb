class AddUserRankToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :user_rank, :integer
  end
end
