class Venue < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :neighborhood_id, :presence => true

  has_many :favorites

  belongs_to :neighborhood, :class_name => "Neighborhood", :foreign_key => "neighborhood_id"
end
