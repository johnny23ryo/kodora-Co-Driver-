class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title, null: false
      t.text :address
      t.date :start_date
      t.date :end_date
      t.float :latitude # float型（浮動小数点型）位置情報（緯度）を保存
      t.float :longitude # float型（浮動小数点型）位置情報（経度）を保存

      t.timestamps
    end
  end
end
