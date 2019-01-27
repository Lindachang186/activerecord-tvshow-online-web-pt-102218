class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum('ratings')
  end
  
end
