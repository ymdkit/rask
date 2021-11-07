class AddStateIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :task_state, foreign_key: true
  end
end
