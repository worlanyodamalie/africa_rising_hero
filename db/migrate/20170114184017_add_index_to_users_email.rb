class AddIndexToUsersEmail < ActiveRecord::Migration[5.0]
  def change
  	# Allows for records to be found by an index ie finding particular words by index
  	add_index :users, :email, unique: true
  end
end
