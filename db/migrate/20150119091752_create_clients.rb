class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

    	t.string :title
    	t.text :headline
    	t.text :intro
    	t.text :help_intro
    	t.text :advice_intro
      t.timestamps
    end
  end
end
