class CreateHelpsheets < ActiveRecord::Migration
  def change
    create_table :helpsheets do |t|
    	t.belongs_to :client, index: true
      t.belongs_to :guide, index: true
      t.timestamps
    end
  end
end
