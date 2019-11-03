class CreatePersonalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_items do |t|
    	t.string :note
    	t.datetime :date_acquired
    	t.string :status
    	t.integer :item_id
    	t.integer :user_id
    	t.timestamps
    end
  end
end
