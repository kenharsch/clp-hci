class AddSubmittedToEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :submitted, :boolean, :default => false
  end
end
