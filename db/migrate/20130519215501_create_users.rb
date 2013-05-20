class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :created
      t.date :last_login

      t.timestamps
    end
  end
end
