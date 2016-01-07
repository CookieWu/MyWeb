class CreatePersonalData < ActiveRecord::Migration
  def change
    create_table :personal_data do |t|

      t.column :myname, 'hstore'
      t.timestamps null: false
    end
  end
end
