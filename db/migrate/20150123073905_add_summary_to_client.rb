class AddSummaryToClient < ActiveRecord::Migration
  def change
  	add_column :clients, :summary, :text
  end
end
