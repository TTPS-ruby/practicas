class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :date, null: false
      t.belongs_to :event_type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :events, :name, unique: true
  end
end
