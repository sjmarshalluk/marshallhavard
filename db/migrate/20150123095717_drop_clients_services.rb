class DropClientsServices < ActiveRecord::Migration
  def up
    drop_table :clients_services
  end

  def down
    
  end
end
