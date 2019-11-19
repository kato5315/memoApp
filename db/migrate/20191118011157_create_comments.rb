class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :memos, foreign_key: true
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
