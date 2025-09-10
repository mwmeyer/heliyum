class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :username
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end

    add_index :comments, :created_at
  end
end
