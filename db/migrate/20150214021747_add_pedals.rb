class AddPedals < ActiveRecord::Migration
  def change
    create_table :pedals do |t|
      t.string :name
      t.string :alt_id
      t.decimal :min_price, precision: 7, scale: 2
      t.decimal :max_price, precision: 7, scale: 2
    end
  end
end
