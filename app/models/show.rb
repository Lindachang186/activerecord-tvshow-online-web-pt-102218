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

end
