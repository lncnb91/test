class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|

      t.timestamps null: false
      t.string :first_name
      t.string :last_name
      t.date :birth_day
    end
  end
end
