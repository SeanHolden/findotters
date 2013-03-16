class ConvertLatAndLongToFloats < ActiveRecord::Migration
  def up
    # change_column :otter_surveys, :lat, :float
    # change_column :otter_surveys, :long, :float
    rename_column :otter_surveys, :lat, :lat_string
    rename_column :otter_surveys, :long, :long_string
    add_column :otter_surveys, :lat, :float
    add_column :otter_surveys, :long, :float
    remove_column :otter_surveys, :lat_string
    remove_column :otter_surveys, :long_string
  end

  def down
    rename_column :otter_surveys, :lat, :lat_float
    rename_column :otter_surveys, :long, :long_float
    add_column :otter_surveys, :lat, :string
    add_column :otter_surveys, :long, :string
    remove_column :otter_surveys, :lat_float
    remove_column :otter_surveys, :long_float
  end
end