class CreateMessages < ActiveRecord::Migration
  def change
  	create_table :messages do |t|
  		t.string :content
  		t.integer :user_id
  		t.references :channel, index: true, foreign_key: true
  	end
  end
end
