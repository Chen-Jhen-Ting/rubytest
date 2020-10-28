class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.string :twid
      t.string :phone
      t.belongs_to :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
