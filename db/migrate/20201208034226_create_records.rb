class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :prefecture_id
      t.string :place, null: false
      t.timestamps
    end
  end
end
