class AddRowOrderToEvaluations < ActiveRecord::Migration
  def change
  	add_column :evaluations, :row_order, :integer
  end
end
