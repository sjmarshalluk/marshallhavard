class AddClientsGuidesTable < ActiveRecord::Migration
  def up
  	create_table :clients_guides do |t|
	    t.integer :client_id
	    t.integer :guide_id
	end
  end
  def down
  	drop_table :clients_guides
  end
end
