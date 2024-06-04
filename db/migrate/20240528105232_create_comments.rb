class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :content # assuming your comment content is stored in a field named content
      t.references :post, foreign_key: true # use :post instead of :posts
      t.timestamps
    end
  end
end
