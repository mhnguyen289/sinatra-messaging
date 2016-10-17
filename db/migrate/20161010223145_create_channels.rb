class CreateChannels < ActiveRecord::Migration
  def change
  	create_table :channels do |t|
  		t.string :title
  		t.text :content
  	   t.string :channel_type
  	end
  end
end
