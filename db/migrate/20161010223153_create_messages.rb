class CreateMessages < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.string :content
  		t.string :username
  		t.integer :user_id
  		t.integer :channel_id
  	end
  end
end
