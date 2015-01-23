class Clientguides < ActiveRecord::Migration
  def change
  	create_table :clientguides do |t|
      t.belongs_to :client, index: true
      t.belongs_to :guide, index: true
    end
  end
end
