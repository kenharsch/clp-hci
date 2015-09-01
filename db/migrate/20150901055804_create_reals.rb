class CreateReals < ActiveRecord::Migration
  def change
    create_table :reals do |t|
    	t.boolean :real_name, default: false 
    	t.integer :user_id
      t.timestamps
    end
  end
end
