require 'csv'

namespace :otter_survey_to_db do
  desc "Importing CSV data to database"
  task :import => :environment do

    # This is crap. I know. But it's a hack so... meh...
    site_no            = 0
    region             = 1
    site_name          = 2
    county             = 3
    alt                = 4
    grid_ref           = 5
    gps_grid_ref_start = 6
    date_v1            = 7
    date_v2            = 8
    date_v3            = 9
    date_v4            = 10
    date_v5            = 11
    v1                 = 12
    v2                 = 13
    v3                 = 14
    v4                 = 15
    v5                 = 16
    gps_grid_ref_otter = 17
    leap               = 18
    mink_present       = 19
    easting            = 20
    northing           = 21
    
    otter_data = []
    CSV.foreach("public/Otter_Survey_Data_1977-2010.csv") do |row|
      otter_data << row
    end
    otter_data.delete(otter_data[0])

    
    otter_data.each do |row|
      OtterSurvey.create(:alt                => row[alt], 
                         :county             => row[county], 
                         :date_v1            => row[date_v1], 
                         :date_v2            => row[date_v2], 
                         :date_v3            => row[date_v3], 
                         :date_v4            => row[date_v4], 
                         :date_v5            => row[date_v5], 
                         :easting            => row[easting], 
                         :gps_grid_ref_otter => row[gps_grid_ref_otter], 
                         :gps_grid_ref_start => row[gps_grid_ref_start], 
                         :grid_ref           => row[grid_ref], 
                         :leap               => row[leap], 
                         :mink_present       => row[mink_present], 
                         :northing           => row[northing], 
                         :region             => row[region], 
                         :site_name          => row[site_name], 
                         :site_no            => row[site_no], 
                         :v1                 => row[v1], 
                         :v2                 => row[v2], 
                         :v3                 => row[v3], 
                         :v4                 => row[v4], 
                         :v5                 => row[v5])
    end
  end

end