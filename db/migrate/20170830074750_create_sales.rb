class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :email_buyer
      t.string :email_seller
      t.string :guid
      t.integer :content_id

      t.timestamps
    end
  end
end
