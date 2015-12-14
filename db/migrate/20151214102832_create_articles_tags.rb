class CreateArticlesTags < ActiveRecord::Migration
  def change
    create_table :articles_tags do |t|

      t.timestamps null: false
      t.integer :article_id
      t.integer :tag_id
    end
  end
end
