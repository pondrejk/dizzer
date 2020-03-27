
select
  brno_tmp6.ogc_fid,
  brno_tmp6.wkb_geometry,
  grid_averages.children,
  grid_averages.culture,
  grid_averages.health,
  grid_averages.church,
  grid_averages.parks, 
  grid_averages.social,
  grid_averages.sport, 
  grid_averages.transport,
  grid_averages.crime, 
  grid_averages.prices,
  grid_averages.noise
from
  brno_tmp6, grid_averages
where
  brno_tmp6.ogc_fid = grid_averages.ogc_fid
