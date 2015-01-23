class DropClientsGuidesTable < ActiveRecord::Migration
  def up
    drop_table :clients_guides
  end

  def down
    
  end
end
