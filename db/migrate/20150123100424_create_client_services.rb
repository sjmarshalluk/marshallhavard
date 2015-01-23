class CreateClientServices < ActiveRecord::Migration
  def change
    create_table :client_services do |t|
	t.belongs_to :client, index: true
      t.belongs_to :service, index: true
      t.timestamps
    end
  end
end
