class Card < ActiveRecord::Base
  validates_presence_of :question, :answer
  validates_uniqueness_of :question
  
  belongs_to :deck
end



# == Schema Information
#
# Table name: cards
#
#  id         :integer(4)      not null, primary key
#  question   :text            default(""), not null
#  answer     :text            default(""), not null
#  created_at :datetime
#  updated_at :datetime
#  deck_id    :integer(4)      default(1), not null
#

