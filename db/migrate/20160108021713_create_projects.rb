class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.string :category
      t.column :company_translations, :hstore
      t.column :project_name_translations, :hstore
      t.column :project_description_translations, :hstore

      t.timestamps null: false
    end
  end
end
