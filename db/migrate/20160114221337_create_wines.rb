class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name, null: false
      t.integer :price_min
      t.integer :price_max
      t.integer :price_retail
      t.integer :api_id, null: false
      t.integer :year
      t.string  :type
      t.string  :url
      t.string  :description
      t.timestamps null: false
    end
    add_index :wines, [:price_min, :price_max, :price_retail]
    add_index :wines, [:year, :url, :description]
    add_index :wines, [:api_id, :name], :unique => true
  end
end
