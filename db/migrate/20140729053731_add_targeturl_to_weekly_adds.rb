class AddTargeturlToWeeklyAdds < ActiveRecord::Migration
  def change
    add_column :weekly_adds, :targeturl, :string
  end
end
