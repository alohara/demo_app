class TestMicropostChange < ActiveRecord::Migration
  def up
  	change_table :microposts do |t|
      t.remove :created
      t.timestamps
    end
  end

  def down
  end
end
