class ChangeServiceGuideName < ActiveRecord::Migration
   def change
     rename_table :service_guides, :service_guide
   end 
end
