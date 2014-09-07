class ChangeColumnName2 < ActiveRecord::Migration
  def up
  	rename_column :deal_finders, :FinderFovorite?, :IsFinderFavorite
  end

  def down
  end
end
