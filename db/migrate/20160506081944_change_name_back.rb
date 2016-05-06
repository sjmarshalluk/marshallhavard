class ChangeNameBack < ActiveRecord::Migration
     def change
     rename_table :service_guide, :service_guides
   end 
end
