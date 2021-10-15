class Movie < ActiveRecord::Base
  
  def self.all_ratings
    Movie.distinct.pluck(:rating)
  end
  
  def self.with_ratings(included_ratings)
    if included_ratings.empty?
      return Movie
    else
      return Movie.where(rating: included_ratings)
    end
  end
end
