class Movie < ActiveRecord::Base
  def self.all_ratings
    pluck(:rating).uniq
  end

  def self.with_ratings(ratings_list)
    if ratings_list.nil? || ratings_list.empty?
      Movie.all
    else
      Movie.where(rating: ratings_list)
    end
  end
end
