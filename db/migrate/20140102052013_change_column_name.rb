class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :daily_deals, :DealerFavorite?, :IsDealerFavorite
  	rename_column :weekly_adds, :WeeklyFavorite?, :IsWeeklyFavorite
  end

  def down
  end
end
