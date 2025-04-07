class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :user_id, null: false
      t.string :password, null: false

      t.timestamps null: false
    end
  end
end
