class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :task_name, null: false
      t.text :memo
      t.timestamp :started_at, null: false
      t.timestamp :ended_at

      t.timestamps null: false
    end
  end
end
