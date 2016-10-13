class CreateMessageChannels < ActiveRecord::Migration
  def change
  	create_table :message_channels do |t|
    	t.references :message, index: true, foreign_key: true
    	t.references :channel, index: true, foreign_key: true
    end
  end
end
