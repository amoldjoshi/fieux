class DailyDeal < ActiveRecord::Base
  attr_accessible :IsDealerFavorite, :DealerID, :DealerName, :DealerType, :targeturl
end
