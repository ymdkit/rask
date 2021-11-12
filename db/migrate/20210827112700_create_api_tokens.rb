class CreateApiTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :api_tokens do |t|
      t.string :secret
      t.string :description
      t.datetime :expired_at
      t.integer :user_id
      t.timestamps
    end

    add_foreign_key :api_tokens, :users, column: :user_id, on_delete: :cascade
  end
end
