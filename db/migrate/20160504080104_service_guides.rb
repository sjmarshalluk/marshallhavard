class ServiceGuides < ActiveRecord::Migration
    def change
    create_table :service_guides do |t|
      t.belongs_to :service, index: true
      t.belongs_to :guide, index: true
      t.timestamps
    end
  end
end
