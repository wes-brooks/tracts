ogr2ogr \
	-f GeoJSON \
	-where "STATENAME NOT IN ('Alaska', 'Hawaii')" \
	tracts.json \
	broadband_tracts_gis/broadband_tracts.shp
	
topojson \
	-p RUCA_INT \
	-q 5e2 \
	-o tracts-topo.json \
	tracts.json