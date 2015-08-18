class Dish < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :cuisine_id, :presence => true

  belongs_to :cuisine, :class_name => "Cuisine", :foreign_key => "cuisine_id"

  has_many :favorites
end
