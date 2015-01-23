class DropClientsQuestions < ActiveRecord::Migration
  def up
    drop_table :clients_questions
  end

  def down
    
  end
end
