class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|

      t.timestamps null: false
      t.text :name
    end
  end
end
