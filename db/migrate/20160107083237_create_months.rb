class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|

      t.column :name_translations, :hstore
      t.timestamps null: false
    end
  end
end
