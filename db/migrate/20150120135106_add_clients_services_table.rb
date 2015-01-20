class AddClientsServicesTable < ActiveRecord::Migration
  def up
  	create_table :clients_services do |t|
	    t.integer :client_id
	    t.integer :service_id
	end
  end
  def down
  	drop_table :clients_services
  end
end
