require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

