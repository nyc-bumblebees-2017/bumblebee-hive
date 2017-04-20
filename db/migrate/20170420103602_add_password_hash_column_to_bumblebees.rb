class AddPasswordHashColumnToBumblebees < ActiveRecord::Migration
  def change
    add_column :bumblebees, :password_digest, :string
  end
end
