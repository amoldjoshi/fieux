class CreateDailyDeals < ActiveRecord::Migration
  def change
    create_table :daily_deals do |t|
      t.string :DealerName
      t.integer :DealerID
      t.integer :DealerType
      t.boolean :DealerFavorite?

      t.timestamps
    end
  end
end
