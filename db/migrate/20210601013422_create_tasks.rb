class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :creator_id
      t.datetime :due_at
      t.integer :assigner_id
      t.text :description

      t.timestamps
    end

    add_foreign_key :tasks, :users, column: :creator_id, on_delete: :cascade
    add_foreign_key :tasks, :users, column: :assigner_id, on_delete: :cascade
  end
end
