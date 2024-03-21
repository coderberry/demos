class CreateDemoUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :demo_users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :age
      t.text :bio
      t.string :phone
      t.jsonb :roles, default: [], null: false
      t.boolean :is_active, default: true
      t.jsonb :settings, default: {}, null: false

      t.index :email, unique: true
      t.index :roles, using: :gin
    end
  end
end
