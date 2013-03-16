class AddLatAndLongToOtterSurveys < ActiveRecord::Migration
  def up
    add_column :otter_surveys, :lat, :string
    add_column :otter_surveys, :long, :string
  end

  def down
    remove_column :otter_surveys, :lat
    remove_column :otter_surveys, :long
  end
end