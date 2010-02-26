class Deck < ActiveRecord::Base
  validates_presence_of :title
  validates_uniqueness_of :title
  
  has_many :cards
end

# == Schema Information
#
# Table name: decks
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#

