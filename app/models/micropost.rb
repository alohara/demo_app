class Micropost < ActiveRecord::Base
  attr_accessible :category_id, :content, :eff_dt, :group_id, :latitude, :longitude, :place_name, :user_id, :visible
  belongs_to :user
  validates :content, :length => {:maximum => 140}
end
