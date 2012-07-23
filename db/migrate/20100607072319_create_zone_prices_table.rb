class CreateCurrencyPricesTable < ActiveRecord::Migration
  def self.up
    create_table :currency_prices do |t|
      t.references :variant
      t.string :currency
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps
    end
    create_table :zone_currencies do |t|
      t.references :zone
      t.string :currency
      t.timestamps
    end
    add_index :currency_prices, :variant_id
    add_index :currency_prices, :currency
    add_index :zone_currencies, :zone_id
    add_index :zone_currencies, :currency
  end
  def self.down
    remove_index :currency_prices, :variant_id
    remove_index :currency_prices, :currency
    remove_index :zone_currencies, :zone_id
    remove_index :zone_currencies, :currency
    drop_table :currency_prices
    drop_table :zone_currencies
  end
end