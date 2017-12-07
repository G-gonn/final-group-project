class CreateBikeRents < ActiveRecord::Migration[5.1]
  def change
    create_table :bike_rents do |t|

      t.timestamps
    end
  end
end
