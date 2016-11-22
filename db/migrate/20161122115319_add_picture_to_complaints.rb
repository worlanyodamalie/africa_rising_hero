class AddPictureToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :picture, :string
  end
end
