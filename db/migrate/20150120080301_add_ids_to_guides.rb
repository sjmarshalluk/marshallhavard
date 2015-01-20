class AddIdsToGuides < ActiveRecord::Migration
  def change
  	add_column :guides, :client_id, :integer
  end
end
