class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|

      t.timestamps null: false
      t.integer :quantity
      t.float :price
      t.text :notes

      t.text :complaint
      t.text :action
      t.text :style
      t.text :product

      # t.references :user

    end
  end
end
