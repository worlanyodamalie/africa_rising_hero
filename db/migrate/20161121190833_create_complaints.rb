class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
