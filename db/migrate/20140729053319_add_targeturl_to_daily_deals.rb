class AddTargeturlToDailyDeals < ActiveRecord::Migration
  def change
    add_column :daily_deals, :targeturl, :string
  end
end
