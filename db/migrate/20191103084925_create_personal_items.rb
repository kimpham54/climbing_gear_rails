class CreatePersonalItems < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_items do |t|
    	t.string :note
    	t.datetime :date_acquired
    	t.string :status
        # t.boolean :published
    	# t.integer :item_id
    	# t.integer :user_id
    	t.timestamps
        t.belongs_to :item, index:true, foreign_key:true
        t.belongs_to :user, index:true, foreign_key:true
    end
  end
end
