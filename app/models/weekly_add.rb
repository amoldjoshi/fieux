class WeeklyAdd < ActiveRecord::Base
  attr_accessible :WeeklyAddID, :WeeklyAddName, :WeeklyAddType, :IsWeeklyFavorite, :targeturl
end
