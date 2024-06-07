class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title
      t.string :location
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
