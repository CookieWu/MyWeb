class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|

      t.string :category
      t.column :content_translations, :hstore
      t.integer :s_year
      t.column :s_month_translations, :hstore
      t.integer :e_year
      t.column :e_month_translations, :hstore
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
