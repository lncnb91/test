class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.timestamps null: false
      t.string :title, null: false
      t.text :content, null: false
      t.integer :category_id, null: false
      t.integer :author_id
    end
  end
end
