class CreateOtterSurveys < ActiveRecord::Migration
  def change
    create_table :otter_surveys do |t|
      t.string :site_no
      t.string :region
      t.string :site_name
      t.string :county
      t.string :alt
      t.string :grid_ref
      t.string :gps_grid_ref_start
      t.string :date_v1
      t.string :date_v2
      t.string :date_v3
      t.string :date_v4
      t.string :date_v5
      t.string :v1
      t.string :v2
      t.string :v3
      t.string :v4
      t.string :v5
      t.string :gps_grid_ref_otter
      t.string :leap
      t.string :mink_present
      t.string :easting
      t.string :northing

      t.timestamps
    end
  end
end
