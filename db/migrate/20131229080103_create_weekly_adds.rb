class CreateWeeklyAdds < ActiveRecord::Migration
  def change
    create_table :weekly_adds do |t|
      t.string :WeeklyAddName
      t.integer :WeeklyAddID
      t.integer :WeeklyAddType
      t.boolean :WeeklyFavorite?

      t.timestamps
    end
  end
end
