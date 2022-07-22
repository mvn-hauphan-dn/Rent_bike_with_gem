class AddNameAddressPhoneNumberRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :role, :integer, default: 0
  end
end
