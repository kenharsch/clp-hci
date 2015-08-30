class CreateShowNames < ActiveRecord::Migration
  def change
    create_table :show_names do |t|
    	t.integer 	:user_id
    	t.string	:name
    	t.boolean 	:real_name, default: 0 
      t.timestamps
    end
  end
end
