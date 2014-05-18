class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :symbol
      t.date :date
      t.decimal :open, precision: 8, scale: 2
      t.decimal :close, precision: 8, scale: 2 
      t.decimal :high, precision: 8, scale: 2
      t.decimal :low, precision: 8, scale: 2
      t.integer :volume, precision: 10

      t.timestamps
    end
  end
end
