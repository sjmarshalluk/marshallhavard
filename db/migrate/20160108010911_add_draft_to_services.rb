class AddDraftToServices < ActiveRecord::Migration
  def change
    add_column :services, :draft, :boolean
    add_column :guides, :draft, :boolean
    add_column :questions, :draft, :boolean
  end
end
