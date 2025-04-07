class CreateTaskDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :task_details, id: :uuid do |t|
      t.references :task, null: false, foreign_key: true, type: :uuid
      t.integer :task_type, null: false
      t.integer :set_count, null: false
      t.timestamp :started_at, null: false
      t.timestamp :ended_at, null: false

      t.timestamps null: false
    end
  end
end
