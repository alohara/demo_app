class Micropost < ActiveRecord::Base
  attr_accessible :category_id, :content, :created, :eff_dt, :group_id, :latitude, :longitude, :place_name, :string, :user_id, :visible
  belongs_to :user
  validates :content, :length => {:maximum => 140}
end
