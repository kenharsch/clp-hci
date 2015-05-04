class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
    	  t.integer  :post_id
        t.integer :user_id
        t.integer   :rating_1  
        t.integer   :rating_2
        t.integer   :rating_3
        t.text      :comment_1 
        t.text      :comment_2 
        t.text      :comment_3 
      t.timestamps
    end
  end
end
