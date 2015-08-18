class Favorite < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :venue_id, :presence => true
  validates :dish_id, :presence => true

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  belongs_to :venue, :class_name => "Venue", :foreign_key => "venue_id"

  belongs_to :dish, :class_name => "Dish", :foreign_key => "dish_id"
end
