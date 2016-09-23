class AddTimeFrameToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :timeframe, :string
  end
end
