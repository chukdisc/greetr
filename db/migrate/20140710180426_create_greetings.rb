class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :sender_id, null: false
      t.string :recipient_id, null: false
      t.text :body, null: false
    end
    add_index :greetings, [:sender_id, :recipient_id, :body]
  end
end
