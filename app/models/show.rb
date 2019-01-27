class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    self.find do |s|
      if s.rating == self.highest_rating
        s.name
      end
    end
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    self.find do |s|
      if s.rating == self.lowest_rating
        s.name
      end
    end
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    self.map do |s|
       if s.rating > 5
       end
    end
  end

end
