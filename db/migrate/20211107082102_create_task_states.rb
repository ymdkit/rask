class CreateTaskStates < ActiveRecord::Migration[6.1]
  def change
    create_table :task_states do |t|
      t.string :name
      t.integer :priority
      t.string :about
      t.string :color
      t.timestamps
    end
  end
end
