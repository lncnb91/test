class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :content
      t.string :meaning
      t.integer :type
      t.integer :tense

      t.timestamps null: false
    end
  end
end
