class AddTargeturlToDealFinders < ActiveRecord::Migration
  def change
    add_column :deal_finders, :targeturl, :string
  end
end
