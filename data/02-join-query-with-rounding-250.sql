select
  brno_250a.id,
  brno_250a.wkb_geometry,
  round(grid_averages_250.children::numeric, 2) as children,
  round(grid_averages_250.culture::numeric, 2) as culture,
  round(grid_averages_250.health::numeric, 2) as health,
  round(grid_averages_250.church::numeric, 2) as church,
  round(grid_averages_250.parks::numeric, 2) as parks,
  round(grid_averages_250.social::numeric, 2) as social,
  round(grid_averages_250.sport::numeric, 2) as sport,
  round(grid_averages_250.transport::numeric, 2) as transport,
  round(grid_averages_250.crime::numeric, 2) as crime,
  round(grid_averages_250.prices::numeric, 2) as prices,
  round(grid_averages_250.noise::numeric, 2) as noise
from
  brno_250a, grid_averages_250
where
  brno_250a.id = grid_averages_250.id
