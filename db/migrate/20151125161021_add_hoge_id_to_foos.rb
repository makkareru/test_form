class AddHogeIdToFoos < ActiveRecord::Migration
  def change
    add_column :foos, :hoge_id, :integer
  end
end
