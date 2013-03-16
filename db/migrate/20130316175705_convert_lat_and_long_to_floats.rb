class ConvertLatAndLongToFloats < ActiveRecord::Migration
  def up
    change_column :otter_surveys, :lat, :float
    change_column :otter_surveys, :long, :float
  end

  def down
    change_column :otter_surveys, :lat, :string
    change_column :otter_surveys, :long, :string
  end
end