class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :time
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
