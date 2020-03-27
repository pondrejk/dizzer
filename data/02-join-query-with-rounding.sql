select
  brno_150a.id,
  brno_150a.wkb_geometry,
  round(grid_averages_150.children::numeric, 2) as children,
  round(grid_averages_150.culture::numeric, 2) as culture,
  round(grid_averages_150.health::numeric, 2) as health,
  round(grid_averages_150.church::numeric, 2) as church,
  round(grid_averages_150.parks::numeric, 2) as parks,
  round(grid_averages_150.social::numeric, 2) as social,
  round(grid_averages_150.sport::numeric, 2) as sport,
  round(grid_averages_150.transport::numeric, 2) as transport,
  round(grid_averages_150.crime::numeric, 2) as crime,
  round(grid_averages_150.prices::numeric, 2) as prices,
  round(grid_averages_150.noise::numeric, 2) as noise
from
  brno_150a, grid_averages_150
where
  brno_150a.id = grid_averages_150.id
