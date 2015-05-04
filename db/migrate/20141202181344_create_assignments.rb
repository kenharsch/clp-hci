class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.datetime :draftDue
      t.datetime :finalDue
      t.boolean :toGroup
      t.boolean :isPosted
      t.datetime :toGroupOn
      t.datetime :postedOn

      t.timestamps
    end
  end
end
