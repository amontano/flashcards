class Card < ActiveRecord::Base
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
#

