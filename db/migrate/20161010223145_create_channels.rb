class CreateChannels < ActiveRecord::Migration
  def change
  	create_table :channels do |t|
  		t.integer :sender_id
      t.integer :recipient_id
  		t.timestamps
    end
    
    add_index :channels, :sender_id
    add_index :channels, :recipient_id
  end
end