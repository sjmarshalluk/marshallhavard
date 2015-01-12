class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

    	t.string :name
    	t.text :description
    	t.boolean :starting_out
    	t.boolean :self_employed
    	t.boolean :limited_company
    	t.boolean :CIS_subcontractor
    	t.boolean :seafarer
    	t.boolean :renting_or_sold_property
    	t.boolean :self_assesment
    	t.boolean :overseas
    	t.boolean :particular_tax_advice
    	t.boolean :employed

      t.timestamps
    end
  end
end
