class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :contact

      t.timestamps
    end
  end
end
