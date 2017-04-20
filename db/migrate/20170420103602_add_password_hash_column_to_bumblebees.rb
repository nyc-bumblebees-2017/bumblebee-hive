class AddPasswordHashColumnToBumblebees < ActiveRecord::Migration
  def change
    add_column :bumblebees, :password_hash, :string
  end
end
