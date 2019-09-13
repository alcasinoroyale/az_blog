class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bio, :string
    add_column :users, :interests, :string
    add_column :users, :location, :string
  end
end
