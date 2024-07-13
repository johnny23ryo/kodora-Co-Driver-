class CreateStamps < ActiveRecord::Migration[7.1]
  def change
    create_table :stamps do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :michi_no_eki_id, null: false
      t.string :image_url

      t.timestamps
    end
  end
end
