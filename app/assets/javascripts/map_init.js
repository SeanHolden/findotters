
// This function creates the map and is called by the div in the HTML

function init()
{
    //console.log=function() {}  //Disable logging for speed
    console.log("Init called!")  
    osMap = new OpenSpace.Map('map');
    markers = new OpenLayers.Layer.Markers("Markers");
    osMap.addLayer(markers);
    postcodeService = new OpenSpace.Postcode();    
    //postcodeService.getLonLat("CF83 1SR", processPostcodeResult);    
    
    loadOtterIcon();

    /*var request = OpenLayers.Request.GET({
      url: "/listmdb",
      callback: listMDBHandler
    });



    var request = OpenLayers.Request.GET({
      url: "/getdata",
      callback: jsonHandlerFunction
    });*/
}
