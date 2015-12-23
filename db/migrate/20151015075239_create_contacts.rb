class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.decimal :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
