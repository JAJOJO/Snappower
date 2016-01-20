class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|

      t.timestamps null: false
      t.text :name
    end
  end
end
