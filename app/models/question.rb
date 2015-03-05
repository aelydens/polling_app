class Question < ActiveRecord::Base
  belongs_to :polls
  have_many :answers
end
