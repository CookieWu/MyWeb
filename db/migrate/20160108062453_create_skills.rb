class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.string :category
      t.column :category_name_translations, :hstore
      t.string :name
      t.timestamps null: false
    end
  end
end
