class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :post
      t.string :email
      t.integer :article_id
      t.timestamps
    end
  end
end
