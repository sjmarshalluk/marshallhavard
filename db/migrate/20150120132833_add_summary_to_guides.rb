class AddSummaryToGuides < ActiveRecord::Migration
  def change
  	add_column :guides, :summary, :text
  end
end
