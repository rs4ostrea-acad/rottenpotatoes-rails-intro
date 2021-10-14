class Movie < ActiveRecord::Base
  
  def self.all_ratings
    Movie.distinct.pluck(:rating)
  end
  
  def self.with_ratings(included_ratings)
    Movie.where(rating: included_ratings)
  end
end
