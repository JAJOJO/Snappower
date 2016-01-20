class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|

      t.timestamps null: false
      t.text :name
    end
  end
end
