class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :company_name
      t.string :address
      t.string :city
      t.string :postcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
