class AddIdsToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :guide_id, :integer
  end
end
