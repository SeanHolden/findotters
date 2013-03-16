class OtterSurvey < ActiveRecord::Base
  attr_accessible :alt, :county, :date_v1, :date_v2, :date_v3, :date_v4, :date_v5, :easting, :gps_grid_ref_otter, :gps_grid_ref_start, :grid_ref, :leap, :mink_present, :northing, :region, :site_name, :site_no, :v1, :v2, :v3, :v4, :v5, :lat, :long
end
