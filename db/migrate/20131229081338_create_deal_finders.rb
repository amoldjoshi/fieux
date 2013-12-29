class CreateDealFinders < ActiveRecord::Migration
  def change
    create_table :deal_finders do |t|
      t.string :FinderName
      t.integer :FinderID
      t.integer :FinderType
      t.boolean :FinderFovorite?

      t.timestamps
    end
  end
end
