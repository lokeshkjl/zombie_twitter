class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.datetime :startTime
      t.datetime :endTime
      t.integer :numberOfPeople
      t.integer :state
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
