class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :title
      t.integer :user_id
      t.integer :rank
      t.datetime :date_posted

      t.timestamps
    end
  end
end
