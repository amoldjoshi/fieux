class ChangeColumnName2 < ActiveRecord::Migration
  def up
  	rename_column :deal_finders, :IsFinderFovorite, :IsFinderFavorite
  end

  def down
  end
end
