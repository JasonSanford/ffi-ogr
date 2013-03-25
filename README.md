ffi-ogr
... for convenient access to OGR functionality from Ruby

To run: `bin/ogr_console`

```ruby

shp = OGR::ShpReader.new.read './spec/data/ne_110m_coastline/ne_110m_coastline.shp'
# => #<FFI::Pointer address=0x007feb5c40ba00>

shp.to_geojson
# => geojson feature collection from Shapefile

shp.to_geojson true
# => "pretty print" geojson feature collection from Shapefile
```

Tested on: MRI 1.9.3-p392 and JRuby 1.7.3