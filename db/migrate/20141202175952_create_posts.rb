class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :problemID
      t.text :content
      t.datetime :savedOn
      t.datetime :toGroupOn
      t.float :grade
      t.string :grader
      
      

      t.timestamps
    end
  end
end
