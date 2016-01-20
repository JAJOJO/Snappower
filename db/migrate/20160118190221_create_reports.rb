class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|

      t.timestamps null: false
      t.text :name
      t.date :date_beg
      t.date :date_end
      t.string :scale
    end
  end
end
