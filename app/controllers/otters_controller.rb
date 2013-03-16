class OttersController < ApplicationController
  def index
    top_lat     = params[:topLat]
    top_long    = params[:topLong]
    bottom_lat  = params[:bottomLat]
    bottom_long = params[:bottomLong]

    otter_survey = OtterSurvey.where()

    render :json => otter_hash
  end

  private

  def otter_hash(top_lat, top_long, bottom_lat, bottom_long)
    otter_survey = OtterSurvey.all
    hsh = {
      :otters=>
        otter_survey.map do |row|
          {
           :siteNo          => row.site_no,
           :region          => row.region,
           :siteName        => row.site_name,
           :county          => row.county,
           :alt             => row.alt,
           :gridRef         => row.grid_ref,
           :gpsGridRefStart => row.gps_grid_ref_start,
           :dateV1          => row.date_v1,
           :dateV2          => row.date_v2,
           :dateV3          => row.date_v3,
           :dateV4          => row.date_v4,
           :dateV5          => row.date_v5,
           :v1              => row.v1,
           :v2              => row.v2,
           :v3              => row.v3,
           :v4              => row.v4,
           :v5              => row.v5,
           :gpsGridRefOtter => row.gps_grid_ref_otter,
           :leap            => row.leap,
           :minkPresent     => row.mink_present,
           :easting         => row.easting,
           :northing        => row.northing,
           :lat             => row.lat,
           :long            => row.long
          }
        end 
    }
    return hsh
  end
end