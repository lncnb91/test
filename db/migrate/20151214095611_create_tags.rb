class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
