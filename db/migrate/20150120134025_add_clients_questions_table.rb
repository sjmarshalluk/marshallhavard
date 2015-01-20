class AddClientsQuestionsTable < ActiveRecord::Migration
  def up
  	create_table :clients_questions do |t|
	    t.integer :client_id
	    t.integer :question_id
	end
  end
  def down
  	drop_table :clients_questions
  end
end
