class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :game_time

  with_options presence: true do
    validates :game_day
    validates :game_time_id, numericality: { other_than: 1 } 
    validates :detail
  end  
end