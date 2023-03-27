class RenameUpperSixColumnToStations < ActiveRecord::Migration[7.0]
  def change
    rename_column :stations, :upper_six, :lower_six_500_average
  end
end
