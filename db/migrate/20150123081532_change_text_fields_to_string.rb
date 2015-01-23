class ChangeTextFieldsToString < ActiveRecord::Migration
  def up
    change_column :clients, :summary, :string
    change_column :clients, :headline, :string
    change_column :guides, :summary, :string
end
def down
    change_column :clients, :summary, :text
    change_column :clients, :headline, :text
    change_column :guides, :summary, :text
end
end
