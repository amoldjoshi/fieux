class DealFinder < ActiveRecord::Base
  attr_accessible :IsFinderFavorite, :FinderID, :FinderName, :FinderType, :targeturl
end
