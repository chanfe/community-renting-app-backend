class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :host_id
      t.integer :renter_id
      t.float :cost
      t.string :discription

      t.timestamps
    end
  end
end
