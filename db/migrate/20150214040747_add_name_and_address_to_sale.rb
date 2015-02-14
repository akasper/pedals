class AddNameAndAddressToSale < ActiveRecord::Migration
  def change
    add_column :sales, :email, :string
    add_column :sales, :shipping_address, :string
  end
end
