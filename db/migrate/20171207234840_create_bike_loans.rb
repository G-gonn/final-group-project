class CreateBikeLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :bike_loans do |t|

      t.timestamps
    end
  end
end
