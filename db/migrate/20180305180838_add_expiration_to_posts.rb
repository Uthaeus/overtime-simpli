class AddExpirationToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :expiration, :date
  end
end
