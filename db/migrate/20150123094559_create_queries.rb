class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
	t.belongs_to :client, index: true
      t.belongs_to :question, index: true
      t.timestamps
    end
  end
end
