class CreatePersonalData < ActiveRecord::Migration
  def change
    create_table :personal_data do |t|

      t.string :category
      t.column :content_translations, :hstore
      t.timestamps null: false
    end
  end
end
