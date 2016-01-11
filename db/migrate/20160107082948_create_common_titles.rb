class CreateCommonTitles < ActiveRecord::Migration
  def change
    create_table :common_titles do |t|

   	  t.string :category
      t.column :title_translations, :hstore
      t.timestamps null: false
    end
  end
end
