class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.belongs_to :event, null: false, foreign_key: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.boolean :confirmed, null: false, default: false

      t.timestamps
    end
  end
end
