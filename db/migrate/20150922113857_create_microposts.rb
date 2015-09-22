class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.text :context
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :microposts, [:user_id, :created_at]
  end
end
