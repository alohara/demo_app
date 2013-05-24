class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.integer :category_id
      t.boolean :visible
      t.timestamp :eff_dt
      t.integer :group_id
      t.string :place_name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
