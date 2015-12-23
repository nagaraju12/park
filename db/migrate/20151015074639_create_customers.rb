class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :company
      t.decimal :phone
      t.string :email
      t.string :quaries

      t.timestamps null: false
    end
  end
end
