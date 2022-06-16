class UpdatePostcodeToRefuge < ActiveRecord::Migration[6.1]
  def change
    change_column :refuges, :postcode, :string
  end
end
