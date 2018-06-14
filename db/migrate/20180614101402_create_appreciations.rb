class CreateAppreciations < ActiveRecord::Migration[5.2]
  def change
    create_table :appreciations do |t|
      t.string :name, null: false
      t.string :body, null: false

      t.timestamps
    end

    add_index :appreciations, :created_at
  end
end
