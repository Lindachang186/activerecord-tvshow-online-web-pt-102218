class Show < ActiveRecord::Base
  self.highest_rating
    Show.maximum(:rating)
  end
end
