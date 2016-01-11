class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.string :category
      t.column :company_translations, :hstore
      t.column :project_name_translations, :hstore
      t.column :project_description_translations, :hstore
      t.integer :s_year
      t.column :s_month_translations, :hstore
      t.integer :e_year
      t.column :e_month_translations, :hstore

      t.timestamps null: false
    end
  end
end
