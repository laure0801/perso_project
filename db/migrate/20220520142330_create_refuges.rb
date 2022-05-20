class CreateRefuges < ActiveRecord::Migration[6.1]
  def change
    create_table :refuges do |t|
      t.string :name
      t.string :address
      t.integer :postcode
      t.string :city

      t.timestamps
    end
  end
end
