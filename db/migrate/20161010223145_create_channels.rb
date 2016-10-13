class CreateChannels < ActiveRecord::Migration
  def change
  	create_table :channels do |t|
  		t.string :title
  		t.text :content
  		t.integer :user_id
  		t.references :message, index: true, foreign_key: true
  	end
  end
end
